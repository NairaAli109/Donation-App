import 'package:donation_app/core/routing/app_routes_names.dart';
import 'package:donation_app/features/payment_page_test.dart';
import 'package:donation_app/features/payment_receipt.dart';
import 'package:donation_app/features/setup/cubit/check_device_cubit.dart';
import 'package:donation_app/features/setup/presentation/screens/check_device_screen.dart';
import 'package:donation_app/features/setup/presentation/screens/loader_screen.dart';
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

      case AppRoutesNames.checkDeviceScreen:
        {
          return MaterialPageRoute(
            builder:
                (_) => BlocProvider(
                  create: (context) => CheckDeviceCubit(),
                  child: CheckDeviceScreen(),
                ),
          );
        }

      case AppRoutesNames.loaderScreen:
        {
          return MaterialPageRoute(
            builder:
                (_) => BlocProvider(
                  create: (context) => CheckDeviceCubit(),
                  child: LoaderScreen(),
                ),
          );
        }

      case AppRoutesNames.paymentReceipt:
        {
          return MaterialPageRoute(builder: (_) => PaymentReceipt());
        }

      case AppRoutesNames.mockPaymentScreen:
        {
          return MaterialPageRoute(builder: (_) => MockPaymentScreen());
        }
      default:
        return null;
    }
  }
}
