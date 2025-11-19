import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/spacer/horizontal_spacer.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/charity_app/cart/presentation/widgets/cart_item_category.dart';
import 'package:donation_app/features/charity_app/cart/presentation/widgets/cart_item_image.dart';
import 'package:donation_app/features/charity_app/cart/presentation/widgets/delete_cart_item.dart';
import 'package:donation_app/features/charity_app/cart/presentation/widgets/item_price.dart';
import 'package:donation_app/features/charity_app/cart/presentation/widgets/quantity_selector.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      fillColor: Colors.transparent,
      borderColor: AppColors.grey2,
      height: 200,
      padding: EdgeInsetsDirectional.all(16),
      widget: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CartItemImage(),
                  HorizontalSpace(width: 12),
                  CartItemCategory(),
                ],
              ),
              DeleteCartItem(),
            ],
          ),
          VerticalSpace(height: 26),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [QuantitySelector(), ItemPrice()],
          ),
        ],
      ),
    );
  }
}
