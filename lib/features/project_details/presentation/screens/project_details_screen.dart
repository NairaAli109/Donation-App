import 'package:donation_app/features/project_details/presentation/widgets/project_body.dart';
import 'package:donation_app/features/project_details/presentation/widgets/project_bottom_nav.dart';
import 'package:donation_app/features/project_details/presentation/widgets/project_details_app_bar.dart';
import 'package:flutter/material.dart';

class ProjectDetailsScreen extends StatelessWidget {
  const ProjectDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProjectDetailsAppBar(),
      body: ProjectBody(),
      bottomNavigationBar: ProjectBottomNav(),
    );
  }
}
