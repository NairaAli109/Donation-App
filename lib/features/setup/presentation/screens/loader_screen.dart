import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_app_bar.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/setup/cubit/check_device_cubit/check_device_cubit.dart';
import 'package:flutter/material.dart';

class LoaderScreen extends StatefulWidget {
  const LoaderScreen({super.key});

  @override
  State<LoaderScreen> createState() => _LoaderScreenState();
}

class _LoaderScreenState extends State<LoaderScreen> {
  @override
  void initState() {
    super.initState();
    _navigateAfterDelay();
  }

  Future<void> _navigateAfterDelay() async {
    await Future.delayed(const Duration(seconds: 5));
    if (mounted) {
      // context.pop();
      var cubit = CheckDeviceCubit.get(context);
      cubit.successAlertDialog(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24, end: 24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: CircularProgressIndicator(
                  strokeWidth: 9,
                  color: AppColors.primaryColorForFatoorah,
                  backgroundColor: AppColors.grey,
                ),
              ),
              VerticalSpace(height: 32),
              CustomText(
                text: 'جارٍ التحقق من كود التفعيل',
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: AppColors.primaryColorForFatoorah,
                textAlign: TextAlign.center,
              ),
              VerticalSpace(height: 16),
              CustomText(
                text: '... يرجى الانتظار جارى الاتصال بالنظام أنتظر لحظات',
                color: AppColors.grey,
                fontSize: 14,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
