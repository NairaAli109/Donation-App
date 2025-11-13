import 'package:flutter/material.dart';
import 'package:nearpay_flutter_sdk/nearpay.dart';

class MockPaymentScreen extends StatefulWidget {
  const MockPaymentScreen({super.key});

  @override
  State<MockPaymentScreen> createState() => _MockPaymentScreenState();
}

class _MockPaymentScreenState extends State<MockPaymentScreen> {
  String _status = 'Idle';
  late Nearpay nearpay;
  final double amount = 14.55; // مثال: SAR 14.55

  @override
  void initState() {
    super.initState();
    nearpay = Nearpay(
      authType: AuthenticationType.email, // نوع تسجيل الدخول
      authValue: "merchant@example.com",  // بيانات الميرتشانت
      env: Environments.sandbox,          // البيئة: sandbox / production
      locale: Locale.localeDefault,
      arabicPaymentText: "يرجى تمرير البطاقة",
      englishPaymentText: "please tap your card",
    );
  }

  Future<void> initializeNearpay() async {
    try {
      await nearpay.initialize();
      setState(() => _status = 'NearPay Initialized');
    } catch (e) {
      setState(() => _status = 'Initialization failed: $e');
    }
  }

  Future<void> setupNearpay() async {
    try {
      await nearpay.setup();
      setState(() => _status = 'NearPay Setup Complete');
    } catch (e) {
      setState(() => _status = 'Setup failed: $e');
    }
  }

  Future<void> startPurchase() async {
    try {
      setState(() => _status = 'Starting purchase...');
      final receipt = await nearpay.purchase(
        amount: (amount * 100).toInt(), // SAR -> هللات
        transactionId: "tx-${DateTime.now().microsecondsSinceEpoch}",
        customerReferenceNumber:
        "order-${DateTime.now().millisecondsSinceEpoch}",
        enableReceiptUi: true,
        enableReversalUi: true,
        enableUiDismiss: true,
        finishTimeout: 60,
      );
      setState(() => _status = 'Purchase Success:\n${receipt.toJson()}');
    } catch (e) {
      setState(() => _status = 'Purchase failed: $e');
    }
  }

  Future<void> refundExample(String transactionUuid) async {
    try {
      final refundReceipt = await nearpay.refund(
        amount: 1000, // نفس وحدة المبلغ المستخدمة
        originalTransactionUUID: transactionUuid,
        transactionId: "refund-${DateTime.now().microsecondsSinceEpoch}",
        customerReferenceNumber:
        "refund-${DateTime.now().millisecondsSinceEpoch}",
        enableReceiptUi: true,
        enableReversalUi: true,
        // isEditableReversalUI: true,
        finishTimeout: 60,
        adminPin: "0000",
      );
      setState(() => _status = 'Refund Success:\n${refundReceipt.toJson()}');
    } catch (e) {
      setState(() => _status = 'Refund failed: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NearPay Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Status: $_status'),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: initializeNearpay,
              child: const Text('Initialize'),
            ),
            ElevatedButton(
              onPressed: setupNearpay,
              child: const Text('Setup'),
            ),
            ElevatedButton(
              onPressed: startPurchase,
              child: const Text('Start Purchase'),
            ),
            ElevatedButton(
              onPressed: () {
                // أدخل UUID من عملية شراء ناجحة هنا
                refundExample('UUID_FROM_PREVIOUS_PURCHASE');
              },
              child: const Text('Refund Example'),
            ),
          ],
        ),
      ),
    );
  }
}
