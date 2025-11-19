import 'package:donation_app/core/dependency_injection/setup_git.dart';
import 'package:donation_app/core/helpers/prefrences_helper.dart';
import 'package:donation_app/core/routing/app_routes_names.dart';
import 'package:donation_app/features/charity_app/charity_onboard/cubit/charity_onboard_cubit.dart';
import 'package:donation_app/features/charity_app/charity_onboard/presentation/screens/charity_onboard_screen.dart';
import 'package:donation_app/features/charity_app/layout/cubit/layout_cubit.dart';
import 'package:donation_app/features/charity_app/layout/presentation/screens/layout_screen.dart';
import 'package:donation_app/features/payment_page_test.dart';
import 'package:donation_app/features/payment_receipt.dart';
import 'package:donation_app/features/setup/cubit/check_device_cubit/check_device_cubit.dart';
import 'package:donation_app/features/setup/cubit/setup_cubit/setup_cubit.dart';
import 'package:donation_app/features/setup/presentation/screens/check_device_screen.dart';
import 'package:donation_app/features/setup/presentation/screens/language_screen.dart';
import 'package:donation_app/features/setup/presentation/screens/loader_screen.dart';
import 'package:donation_app/features/setup/presentation/screens/setup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesNames.startScreen:
        {
          final bool? hasSetup = PreferencesHelper.hasSetup();
          final bool? hasLang = PreferencesHelper.hasLang();

          if (hasLang == true && hasSetup == true) {
            return MaterialPageRoute(
              builder:
                  (_) => BlocProvider(
                    create: (context) => getIt.get<CharityOnboardCubit>(),
                    child: CharityOnBoardScreen(),
                  ),
            );
          } else if (hasLang == true && hasSetup != true) {
            return MaterialPageRoute(
              builder:
                  (_) => BlocProvider(
                    create: (context) => getIt.get<SetupCubit>(),
                    child: SetupScreen(),
                  ),
            );
          } else {
            return MaterialPageRoute(builder: (_) => LanguageScreen());
          }
          // return MaterialPageRoute(builder: (_) => PaymentReceipt());
          // return MaterialPageRoute(builder: (_) => MockPaymentScreen());
        }

      ///app setup
      case AppRoutesNames.setupScreen:
        {
          return MaterialPageRoute(
            builder:
                (_) => BlocProvider(
                  create: (context) => getIt.get<SetupCubit>(),
                  child: SetupScreen(),
                ),
          );
        }

      case AppRoutesNames.checkDeviceScreen:
        {
          return MaterialPageRoute(
            builder:
                (_) => BlocProvider(
                  create: (context) => getIt.get<CheckDeviceCubit>(),
                  child: CheckDeviceScreen(),
                ),
          );
        }

      case AppRoutesNames.loaderScreen:
        {
          return MaterialPageRoute(
            builder:
                (_) => BlocProvider(
                  create: (context) => getIt.get<CheckDeviceCubit>(),
                  child: LoaderScreen(),
                ),
          );
        }

      ///charity account
      case AppRoutesNames.charityDonateNowScreen:
        {
          return MaterialPageRoute(
            builder:
                (_) => BlocProvider(
                  create: (context) => getIt.get<CharityOnboardCubit>(),
                  child: CharityOnBoardScreen(),
                ),
          );
        }

      case AppRoutesNames.layoutScreen:
        {
          return MaterialPageRoute(
            builder:
                (_) => BlocProvider(
                  create: (context) => getIt.get<LayoutCubit>(),
                  child: LayoutScreen(),
                ),
          );
        }

      //just for test
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
