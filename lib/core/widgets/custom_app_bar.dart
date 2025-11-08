import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_arrow_back_icon.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.backgroundColor,
      leadingWidth: 90,
      leading: CustomArrowBackIcon(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
