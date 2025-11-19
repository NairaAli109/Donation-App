import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_app_bar.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/setup/cubit/check_device_cubit/check_device_cubit.dart';
import 'package:donation_app/features/setup/cubit/check_device_cubit/check_device_states.dart';
import 'package:donation_app/features/setup/presentation/widgets/check_device/otp.dart';
import 'package:donation_app/features/setup/presentation/widgets/check_device/send_button.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckDeviceScreen extends StatelessWidget {
  const CheckDeviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckDeviceCubit, CheckDeviceStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(),
          body: Padding(
            padding: EdgeInsetsDirectional.only(start: 23.5, end: 23.5,),
            child: Center(
              child: SingleChildScrollView(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSvgIcon(assetName: Assets.iconsOtpIcon),
                    VerticalSpace(height: 16),
                    CustomText(
                      text: "إدخال كود التفعيل",
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    VerticalSpace(height: 16),
                    CustomText(
                      text: "أدخل كود التفعيل المطبوع على فاتورة الاشتراك",
                      fontSize: 14,
                      color: AppColors.grey,
                    ),
                    VerticalSpace(height: 36),
                    Otp(),
                    VerticalSpace(height: 56),
                    SendButton()
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
