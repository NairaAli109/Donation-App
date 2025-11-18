import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/donate_now/presentation/widgets/donation_amounts.dart';
import 'package:donation_app/features/home/presentation/widgets/project/no_of_days_and_no_of_donor.dart';
import 'package:donation_app/features/home/presentation/widgets/project/price.dart';
import 'package:donation_app/features/home/presentation/widgets/project/price_progress_bar.dart';
import 'package:donation_app/features/project_details/cubit/project_details_cubit.dart';
import 'package:donation_app/features/project_details/cubit/project_details_states.dart';
import 'package:donation_app/features/project_details/presentation/widgets/project_custom_donation_amount.dart';
import 'package:donation_app/features/project_details/presentation/widgets/project_descreption.dart';
import 'package:donation_app/features/project_details/presentation/widgets/project_slider.dart';
import 'package:donation_app/features/project_details/presentation/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectBody extends StatelessWidget {
  const ProjectBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProjectSlider(),
            VerticalSpace(height: 16),
            TitleText(text: 'كفالة يتم'),
            VerticalSpace(height: 8),
            ProjectDescription(),
            VerticalSpace(height: 16),
            TitleText(text: 'تقيم المشروع'),
            VerticalSpace(height: 16),
            Price(),
            VerticalSpace(height: 8),
            PriceProgressBar(value: 0.3),
            VerticalSpace(height: 8),
            NoOfDaysAndNoOfDonor(),
            VerticalSpace(height: 32),
            TitleText(text: 'أختر مبلغ التبرع الخاص بك'),
            VerticalSpace(height: 16),
            BlocBuilder<ProjectDetailsCubit, ProjectDetailsStates>(
              builder: (context, state) {
                var cubit = ProjectDetailsCubit.get(context);
                return DonationAmounts(amounts: cubit.amounts, cubit: cubit);
              },
            ),
            VerticalSpace(height: 32),
            CustomText(
              text: "تخصيص مبلغ التبرع",
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: AppColors.mainBlack,
            ),
            VerticalSpace(height: 16),
            ProjectCustomDonationAmount(),
          ],
        ),
      ),
    );
  }
}
