import 'package:donation_app/core/routing/app_routes_names.dart';
import 'package:donation_app/features/splash/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesNames.startScreen:
        {
          return MaterialPageRoute(builder: (_) => const SplashScreen());
        }
      default:
        return null;
    }
  }
}
