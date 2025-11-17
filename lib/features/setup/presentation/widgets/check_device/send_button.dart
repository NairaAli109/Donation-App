import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/features/setup/cubit/check_device_cubit/check_device_cubit.dart';
import 'package:donation_app/features/setup/cubit/check_device_cubit/check_device_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SendButton extends StatelessWidget {
  const SendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckDeviceCubit, CheckDeviceStates>(
      builder: (context, state) {
        var cubit = CheckDeviceCubit.get(context);
        return CustomButton(
          onTap: () => cubit.checkDeviceAuth(context),
          text: "أرسال",
        );
      },
    );
  }
}
