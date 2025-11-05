import 'package:donation_app/core/routing/app_routes_names.dart';
import 'package:donation_app/features/payment_receipt.dart';
import 'package:donation_app/features/splash/cubit/splash_cubit.dart';
import 'package:donation_app/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesNames.startScreen:
        {
          return MaterialPageRoute(
            builder:
                (_) => BlocProvider(
                  create: (context) => SplashCubit()..initApp(context),
                  child: SplashScreen(),
                ),
          );
        }
      case AppRoutesNames.paymentReceipt:
        {
          return MaterialPageRoute(builder: (_) => PaymentReceipt());
        }
      default:
        return null;
    }
  }
}
