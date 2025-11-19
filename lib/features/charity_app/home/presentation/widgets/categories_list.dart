import 'package:donation_app/core/widgets/spacer/horizontal_spacer.dart';
import 'package:donation_app/features/charity_app/home/cubit/home_cubit.dart';
import 'package:donation_app/features/charity_app/home/cubit/home_states.dart';
import 'package:donation_app/features/charity_app/home/presentation/widgets/categories_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return SizedBox(
          height: 41,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => CategoriesListItem(index: index),
            separatorBuilder: (context, index) => HorizontalSpace(width: 12),
            itemCount: cubit.categoriesName.length,
          ),
        );
      },
    );
  }
}
