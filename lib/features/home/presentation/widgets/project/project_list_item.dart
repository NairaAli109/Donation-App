import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/features/home/presentation/widgets/project/project_brief.dart';
import 'package:donation_app/features/home/presentation/widgets/project/project_image.dart';
import 'package:flutter/material.dart';

class ProjectListItem extends StatelessWidget {
  const ProjectListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 15),
      child: Container(
        // height: 348,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.grey2),
          color: Colors.transparent,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProjectImage(),
            ProjectBrief(),
          ],
        ),
      ),
    );
  }
}
