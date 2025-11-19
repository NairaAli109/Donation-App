import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/features/charity_app/cart/cubit/cart_cubit.dart';
import 'package:donation_app/features/charity_app/cart/cubit/cart_states.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartDonateButton extends StatelessWidget {
  const CartDonateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartStates>(
      builder: (context, state) {
        var cubit = CartCubit.get(context);

        return CustomButton(
          onTap: () => cubit.donate(),
          fillColor: AppColors.primaryColorForCharities,
          borderColor: AppColors.primaryColorForCharities,
          radius: 12,
          widget: Center(
            child: CustomText(
              text: "تبرع الان",
              color: AppColors.backgroundColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      },
    );
  }
}
