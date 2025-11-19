import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/features/charity_app/cart/cubit/cart_cubit.dart';
import 'package:donation_app/features/charity_app/cart/cubit/cart_states.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteCartItem extends StatelessWidget {
  const DeleteCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<CartCubit, CartStates>(
      builder: (context, state) {
        var cubit = CartCubit.get(context);
        return GestureDetector(
          onTap: () => cubit.deleteCartItem(),
          child: CustomSvgIcon(assetName: Assets.iconsCircularXIcon),
        );
      },
    );
  }
}
