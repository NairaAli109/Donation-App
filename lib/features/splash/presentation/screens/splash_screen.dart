import 'package:donation_app/features/splash/cubit/splash_cubit.dart';
import 'package:donation_app/features/splash/cubit/splash_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Center(
              //   child: Image.asset(
              //     AppImages.koalaLogo,
              //     fit: BoxFit.fill,
              //   ),
              // ),
              const SizedBox(height: 20),
              const Text(
                'Donation App Logo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 30),
              BlocBuilder<SplashCubit, SplashStates>(
                builder: (context, state) {
                  var cubit = SplashCubit.get(context);
                  return Text(
                    'Device ID: ${cubit.serialNumber}',
                    style: const TextStyle(color: Colors.white70, fontSize: 14),
                  );
                },
              ),
              const SizedBox(height: 40),
              const CircularProgressIndicator(color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
