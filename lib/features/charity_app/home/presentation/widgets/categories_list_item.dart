import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/horizontal_spacer.dart';
import 'package:donation_app/features/charity_app/home/cubit/home_cubit.dart';
import 'package:donation_app/features/charity_app/home/cubit/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesListItem extends StatelessWidget {
  const CategoriesListItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        bool isSelected = cubit.selectedIndex == index;

        return CustomButton(
          onTap: () {
            cubit.changeSelectedIndex(index);
          },
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSvgIcon(
                assetName: cubit.categoriesIcons[index],
                color:
                    isSelected
                        ? AppColors.backgroundColor
                        : AppColors.primaryColorForFatoorah,
              ),
              HorizontalSpace(width: 4),
              CustomText(
                text: cubit.categoriesName[index],
                color:
                    isSelected
                        ? AppColors.backgroundColor
                        : AppColors.primaryColorForFatoorah,
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ],
          ),
          width: 91,
          height: 40,
          radius: 100,
          borderColor: Colors.transparent,
          fillColor:
              isSelected ? AppColors.primaryColorForCharities : AppColors.grey5,
        );
      },
    );
  }
}
