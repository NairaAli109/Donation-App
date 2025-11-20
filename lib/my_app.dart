import 'package:donation_app/core/dependency_injection/setup_git.dart';
import 'package:donation_app/core/helpers/general_functions.dart';
import 'package:donation_app/core/helpers/localization/app_localization.dart';
import 'package:donation_app/core/helpers/localization/l10n.dart';
import 'package:donation_app/core/helpers/localization/local_cubit.dart';
import 'package:donation_app/core/routing/app_routes.dart';
import 'package:donation_app/core/theming/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    GeneralFunctions.setPreferredOrientation(context);
    return BlocProvider(
      create: (_) => getIt.get<LocaleCubit>(),
      child: BlocBuilder<LocaleCubit, Locale>(
        builder: (_, local) {
          return MaterialApp(
            scaffoldMessengerKey: scaffoldMessengerKey,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: appRouter.generateRoute,
            theme: AppTheme.lightTheme,
            supportedLocales: L10n.all,
            locale: local,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            builder: (context, child) {
              return MediaQuery(
                data: MediaQuery.of(
                  context,
                ).copyWith(textScaler: const TextScaler.linear(1.0)),
                child: child!,
              );
            },
          );
        },
      ),
    );
  }
}

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();
