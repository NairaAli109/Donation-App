import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // final AppRouter appRouter;

  const MyApp({super.key, });

  @override
  Widget build(BuildContext context) {
    // GeneralFunctions.setPreferredOrientation();
    return MaterialApp(
      scaffoldMessengerKey: scaffoldMessengerKey,
      debugShowCheckedModeBanner: false,
      // onGenerateRoute: appRouter.generateRoute,
      // theme: AppTheme.lightTheme,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: child!,
        );
      },
    );
  }
}

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
GlobalKey<ScaffoldMessengerState>();
