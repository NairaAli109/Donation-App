import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/features/cart/cubit/cart_cubit.dart';
import 'package:donation_app/features/cart/cubit/cart_states.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuantitySelector extends StatelessWidget {
  const QuantitySelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartStates>(
      builder: (context, state) {
        var cubit = CartCubit.get(context);

        return Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            border: Border.all(color: AppColors.grey2),
          ),
          child: Row(
            children: [
              // Plus button
              InkWell(
                onTap: cubit.quantity < cubit.maxQuantity
                    ? cubit.increment
                    : null,
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: CustomSvgIcon(assetName: Assets.iconsPlusIcon),
                ),
              ),

              VerticalDivider(color: AppColors.grey2),

              // Quantity display
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 8,
                  end: 8,
                  top: 15.5,
                  bottom: 15.5,
                ),
                child: CustomText(
                  text: cubit.quantity.toString(),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.grey,
                ),
              ),

              VerticalDivider(color: AppColors.grey2),

              // Minus button
              InkWell(
                onTap: cubit.quantity > cubit.minQuantity
                    ? cubit.decrement
                    : null,
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: CustomSvgIcon(assetName: Assets.iconsMinusIcon),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
