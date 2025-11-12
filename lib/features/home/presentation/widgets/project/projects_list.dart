import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/home/presentation/widgets/project/project_list_item.dart';
import 'package:flutter/material.dart';

class ProjectsList extends StatelessWidget {
  const ProjectsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ProjectListItem(),
      separatorBuilder: (context, index) => VerticalSpace(height: 24),
      itemCount: 3,
    );
  }
}
