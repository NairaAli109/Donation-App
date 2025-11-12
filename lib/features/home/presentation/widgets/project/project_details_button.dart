import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ProjectDetailsButton extends StatelessWidget {
  const ProjectDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child:  CustomButton(
      onTap: () {},
      text: "عرض التفاصيل",
      fillColor: Colors.transparent,
      borderColor: AppColors.primaryColorForCharities,
      textColor: AppColors.primaryColorForCharities,
      radius: 12,
    ));
  }
}
