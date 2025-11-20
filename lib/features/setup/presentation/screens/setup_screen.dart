import 'package:donation_app/core/helpers/general_functions.dart';
import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_assets_image.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/setup/cubit/setup_cubit/setup_cubit.dart';
import 'package:donation_app/features/setup/cubit/setup_cubit/setup_states.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/custom_button.dart';

class SetupScreen extends StatelessWidget {
  const SetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isTablet = GeneralFunctions.isTablet(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal:isTablet?516: 23.5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomAssetsImage(
                assetName: Assets.imagesFatoorahLogo,
                width: 200,
                height: 132,
              ),
              VerticalSpace(height: 40),
              CustomText(
                text: ' أهلاً بك في نظام فاتورة ',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              VerticalSpace(height: 16),
              CustomText(
                text:
                    'قبل البدء في استقبال التبرعات، يرجى تفعيل هذا الجهاز باستخدام كود الاشتراك الخاص بجمعيتك',
                fontSize: 14,
                color: AppColors.grey,
                textAlign: TextAlign.center,
              ),
              VerticalSpace(height: 32),
              BlocBuilder<SetupCubit, SetupStates>(
                builder: (context, state) {
                  var cubit = SetupCubit.get(context);
                  return CustomButton(
                    onTap: () => cubit.activateDevice(context),
                    text: "أبدأ التفعيل",
                  );
                },
              ),
              VerticalSpace(height: 16),
              CustomText(
                text:
                    'هذا الإعداد يتم مرة واحدة فقط أثناء تشغيل الجهاز لأول مرة',
                color: AppColors.grey,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
