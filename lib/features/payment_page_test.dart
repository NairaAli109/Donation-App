import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:nearpay_flutter_sdk/nearpay.dart'; // حسب README

class MockPaymentScreen extends StatefulWidget {
  const MockPaymentScreen({super.key});

  @override
  State<MockPaymentScreen> createState() => _MockPaymentScreenState();
}

class _MockPaymentScreenState extends State<MockPaymentScreen> {
  String _status = 'Idle';
  final double amount = 1.00; // مثال: المبلغ بوحدة أقصى ما تحدده الوثائق

  Future<void> initializeNearpay() async {
    // authType/authValue لازم يجيبوهم من العميل (merchant)
    final authType = AuthenticationType.email.value; // مثال
    final authValue = "merchant@example.com";

    final reqData = {
      "authtype": authType,
      "authvalue": authValue,
      "locale": Locale.localeDefault.value,
      "environment":
          Environments.sandbox.value, // أو Environments.production.value
    };

    final jsonResponse = await Nearpay.initialize(reqData);
    final jsonData = json.decode(jsonResponse);
    if (jsonData['status'] == 200) {
      setState(() => _status = 'Initialized');
    } else {
      setState(() => _status = 'Initialize failed: ${jsonData['status']}');
    }
  }

  Future<void> setupNearpay() async {
    final jsonResponse = await Nearpay.setup();
    final jsonData = json.decode(jsonResponse);
    if (jsonData['status'] == 200) {
      setState(() => _status = 'Setup OK');
    } else {
      setState(() => _status = 'Setup failed: ${jsonData['status']}');
    }
  }

  Future<void> startPurchase() async {
    final reqData = {
      "amount": (amount * 100).toInt(), // راجعي docs لوحدة المبلغ (cents/pt)
      "customer_reference_number":
          "order-${DateTime.now().millisecondsSinceEpoch}",
      "isEnableUI": true,
      "isEnableReversal": true,
      "finishTimeout": 2,
      "transactionId": "tx-${DateTime.now().microsecondsSinceEpoch}",
    };

    setState(() => _status = 'Starting purchase...');
    try {
      final purchaseReceipt = await Nearpay.purchase(reqData);
      final jsonData = json.decode(purchaseReceipt);
      if (jsonData['status'] == 200) {
        // الـ response يحتوي على تفاصيل العملية (uuid, amount, status...)
        setState(
          () => _status = 'Purchase success: ${jsonData['data'] ?? jsonData}',
        );
        // أرسلي الـ uuid / transaction info للباك إند للتحقق والتخزين
      } else {
        setState(() => _status = 'Purchase failed: ${jsonData['status']}');
      }
    } catch (e) {
      setState(() => _status = 'Purchase error: $e');
    }
  }

  Future<void> refundExample(String transactionUuid) async {
    final reqData = {
      "amount": 1, // نفس وحدة المبلغ المستخدمة
      "transaction_uuid": transactionUuid,
      "customer_reference_number":
          "refund-${DateTime.now().millisecondsSinceEpoch}",
      "isEnableUI": true,
      "isEnableReversal": true,
      "isEditableReversalUI": true,
      "finishTimeout": 2,
      "adminPin": "0000",
      "transactionId": "refund-${DateTime.now().microsecondsSinceEpoch}",
    };

    final refundReceipt = await Nearpay.refund(reqData);
    final jsonData = json.decode(refundReceipt);
    if (jsonData['status'] == 200) {
      setState(() => _status = 'Refund success');
    } else {
      setState(() => _status = 'Refund failed: ${jsonData['status']}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NearPay Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Status: $_status'),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: initializeNearpay,
              child: const Text('Initialize'),
            ),
            ElevatedButton(onPressed: setupNearpay, child: const Text('Setup')),
            ElevatedButton(
              onPressed: startPurchase,
              child: const Text('Start Purchase'),
            ),
            // ElevatedButton(
            //   onPressed: () => refundExample('UUID_FROM_RECEIPT'),
            //   child: const Text('Refund Example'),
            // ),
          ],
        ),
      ),
    );
  }
}

// class MockPaymentScreen extends StatefulWidget {
//   const MockPaymentScreen({super.key});
//
//   @override
//   State<MockPaymentScreen> createState() => _MockPaymentScreenState();
// }
//
// class _MockPaymentScreenState extends State<MockPaymentScreen> {
//   static const platform = MethodChannel('com.example.donation_app/pos_payment');
//
//
//   String paymentStatus = 'Waiting...';
//
//   Future<void> startPayment() async {
//     try {
//       setState(() => paymentStatus = 'Processing...');
//       final result = await platform.invokeMethod('startPayment', {'amount': 100.00});
//       setState(() => paymentStatus = 'Payment $result');
//     } on PlatformException catch (e) {
//       setState(() => paymentStatus = 'Error: ${e.message}');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Mock Payment')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Status: $paymentStatus'),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: startPayment,
//               child: const Text('Pay 100 SAR'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
