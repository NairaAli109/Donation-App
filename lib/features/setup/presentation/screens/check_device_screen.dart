import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_app_bar.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/features/setup/cubit/check_device_cubit.dart';
import 'package:donation_app/features/setup/cubit/check_device_states.dart';
import 'package:donation_app/features/setup/presentation/widgets/check_device/device_checker_alert_diaog.dart';
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
            padding: EdgeInsetsDirectional.only(start: 23.5, end: 23.5),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<CheckDeviceCubit, CheckDeviceStates>(
                    builder: (context, state) {
                      var cubit = CheckDeviceCubit.get(context);
                      return CustomButton(
                        onTap: () => cubit.checkDeviceAuth(context),
                        text: "أرسال",
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
