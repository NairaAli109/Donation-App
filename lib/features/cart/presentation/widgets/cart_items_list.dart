import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/cart/presentation/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => CartItem(),
      separatorBuilder: (context, index) => VerticalSpace(height: 16),
      itemCount: 2,
    );
  }
}
