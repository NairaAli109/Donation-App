import 'package:donation_app/core/widgets/spacer/horizontal_spacer.dart';
import 'package:donation_app/features/charity_app/home/presentation/widgets/project/add_to_cart_button.dart';
import 'package:donation_app/features/charity_app/home/presentation/widgets/project/project_details_button.dart';
import 'package:flutter/material.dart';

class ProjectButtons extends StatelessWidget {
  const ProjectButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 8, end: 8, bottom: 16),
      child: Row(
        children: [
          AddToCartButton(onTap: () {}),
          HorizontalSpace(width: 16),
          ProjectDetailsButton(),
        ],
      ),
    );
  }
}
