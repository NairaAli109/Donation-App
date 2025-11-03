import 'package:donation_app/core/helpers/spacer.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 50,
                height: 50,
                color: Colors.redAccent,
                child: Text("arabic"),
              ),
            ),
            HorizontalSpace(width: 8),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 50,
                height: 50,
                color: Colors.redAccent,
                child: Text("arabic"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
