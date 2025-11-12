import 'package:donation_app/core/helpers/extensions.dart';
import 'package:donation_app/core/helpers/prefrences_helper.dart';
import 'package:donation_app/core/routing/app_routes_names.dart';
import 'package:donation_app/features/setup/cubit/check_device_cubit/check_device_states.dart';
import 'package:donation_app/features/setup/presentation/widgets/check_device/device_checker_alert_diaog.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckDeviceCubit extends Cubit<CheckDeviceStates> {
  CheckDeviceCubit() : super(CheckDeviceInitialState());

  static CheckDeviceCubit get(BuildContext context) => BlocProvider.of(context);

  checkDeviceAuth(BuildContext context) {
    context.pushNamed(AppRoutesNames.loaderScreen);
    emit(CheckDeviceSuccessState());
  }

  successAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return DeviceCheckerAlertDialog(
          iconPath: Assets.iconsSuccessDeviceCheck,
          dialogTitle: 'تم التفعيل بنجاح',
          dialogDescription: 'تم ربط هذا الجهاز بنجاح باسم جمعية البر الخيرية',
          buttonText: 'متابعة',
          hint: 'تبقى لك جهازان فقط من اشتراكك الحالي',
          isFailed: false,
          onTap: () async {
            await PreferencesHelper.saveSetup();
            context.pushNamed(AppRoutesNames.charityDonateNowScreen);
          },
          isDeviceLimitReached: false,
        );
      },
    );
  }

  failedAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return DeviceCheckerAlertDialog(
          iconPath: Assets.iconsFailedDeviceCheck,
          dialogTitle: 'فشل التفعيل',
          dialogDescription:
              'الكود الذي تم إدخاله غير صحيح أو انتهت صلاحيته'
              ' يرجى التأكد من الكود أو التواصل مع فريق الدعم',
          buttonText: 'أعد المحاولة',
          hint: 'تواصل مع الدعم',
          isFailed: true,
          onTap: () {},
          isDeviceLimitReached: false,
        );
      },
    );
  }

  deviceLimitReachedAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return DeviceCheckerAlertDialog(
          iconPath: Assets.iconsFailedDeviceCheck,
          dialogTitle: 'عدد الأجهزة المتاحة من رخصتك أنتهى',
          dialogDescription: ' تواصل مع  فاتورة لإدارة الاشتراك',
          isFailed: false,
          isDeviceLimitReached: true,
        );
      },
    );
  }
}
