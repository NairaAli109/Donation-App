import 'package:donation_app/features/donate_now/presentation/widgets/donation_amount_item.dart';
import 'package:flutter/material.dart';

class DonationAmounts extends StatelessWidget {
  const DonationAmounts({
    super.key,
    required this.amounts,
    required this.cubit,
  });

  final List<double> amounts;
  final cubit;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsetsDirectional.only(top: 23, bottom: 40, end: 5),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 0,
        childAspectRatio: 2.5,
      ),
      itemCount: amounts.length,
      itemBuilder: (context, index) {
        return DonationAmountItem(amount: amounts[index], cubit: cubit);
      },
    );
  }
}
