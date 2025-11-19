import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/charity_app/donate_now/cubit/donate_now_cubit.dart';
import 'package:donation_app/features/charity_app/donate_now/cubit/donate_now_states.dart';
import 'package:donation_app/features/charity_app/donate_now/presentation/widgets/customize_donation_amount.dart';
import 'package:donation_app/features/charity_app/donate_now/presentation/widgets/donate_button.dart';
import 'package:donation_app/features/charity_app/donate_now/presentation/widgets/donation_amounts.dart';
import 'package:donation_app/features/charity_app/project_details/presentation/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DonationContainer extends StatelessWidget {
  const DonationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: 17, end: 15),
        child: Container(
          // height: 375,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.grey6,
          ),
          padding: EdgeInsetsDirectional.only(
            start: 16,
            end: 16,
            top: 40,
            bottom: 22,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(text: "أختر مبلغ التبرع الخاص بك"),
              BlocBuilder<DonateNowCubit, DonateNowStates>(
                builder: (context, state) {
                  var cubit = DonateNowCubit.get(context);

                  return DonationAmounts(amounts: cubit.amounts, cubit: cubit);
                },
              ),
              TitleText(text: "أو يمكنك تخصيص مبلغ التبرع"),
              VerticalSpace(height: 23),
              CustomizeDonationAmount(),
              VerticalSpace(height: 19),
              DonateButton(),
            ],
          ),
        ),
      ),
    );
  }
}
