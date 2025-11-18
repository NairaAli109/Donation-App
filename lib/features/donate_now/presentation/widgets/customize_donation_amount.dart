import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/features/donate_now/cubit/donate_now_cubit.dart';
import 'package:donation_app/features/donate_now/cubit/donate_now_states.dart';
import 'package:donation_app/features/donate_now/presentation/widgets/amount_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomizeDonationAmount extends StatelessWidget {
  const CustomizeDonationAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            text: "ادخل مبلغ التبرغ",
            fontSize: 14,
            color: AppColors.mainBlack,
          ),
          BlocBuilder<DonateNowCubit, DonateNowStates>(
            builder: (context, state) {
              var cubit = DonateNowCubit.get(context);

              return CustomAmountTextField(
                validator: (value) {
                  if (cubit.selectedAmount == null) {
                    if (value == null || value.isEmpty) {
                      return 'الرجاء إدخال المبلغ';
                    }

                    final amount = double.tryParse(value);
                    if (amount == null) {
                      return 'الرجاء إدخال رقم صحيح';
                    }

                    if (amount <= 0) {
                      return 'المبلغ يجب أن يكون أكبر من صفر';
                    }
                  }

                  return null;
                },
                formKey: cubit.formKey,
                controller: cubit.controller,
              );
            },
          ),
        ],
      ),
    );
  }
}
