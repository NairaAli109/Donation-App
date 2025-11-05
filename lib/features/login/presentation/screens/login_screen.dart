import 'package:donation_app/core/helpers/extensions.dart';
import 'package:donation_app/core/routing/app_routes_names.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("login"),

            ElevatedButton(
              onPressed: () async {
                context.pushNamed(AppRoutesNames.paymentReceipt);
              },
              child: const Text('payment receipt page'),
            ),
          ],
        ),
      ),
    );
  }
}
