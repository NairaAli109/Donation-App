import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MockPaymentScreen extends StatefulWidget {
  const MockPaymentScreen({super.key});

  @override
  State<MockPaymentScreen> createState() => _MockPaymentScreenState();
}

class _MockPaymentScreenState extends State<MockPaymentScreen> {
  static const platform = MethodChannel('com.example.donation_app/pos_payment');


  String paymentStatus = 'Waiting...';

  Future<void> startPayment() async {
    try {
      setState(() => paymentStatus = 'Processing...');
      final result = await platform.invokeMethod('startPayment', {'amount': 100.00});
      setState(() => paymentStatus = 'Payment $result');
    } on PlatformException catch (e) {
      setState(() => paymentStatus = 'Error: ${e.message}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mock Payment')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Status: $paymentStatus'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: startPayment,
              child: const Text('Pay 100 SAR'),
            ),
          ],
        ),
      ),
    );
  }
}
