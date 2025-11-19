import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ProjectDescription extends StatelessWidget {
  const ProjectDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text:
          "كفالتك لليتيم ليست مجرد نفقة، بل هي حياة كريمة ورعاية شاملة تُخفف عنه قسوة اليتم، وتفتح له أبواب الأمل والتعليم، وتنال بها الأجر العظيم ورفقة النبي ﷺ في الجنة",
      color: AppColors.grey,
    );
  }
}
