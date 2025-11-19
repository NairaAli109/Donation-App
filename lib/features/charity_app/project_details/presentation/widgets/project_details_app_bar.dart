import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_app_bar.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ProjectDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ProjectDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: CustomText(
        text: "تفاصيل المشروع",
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AppColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
