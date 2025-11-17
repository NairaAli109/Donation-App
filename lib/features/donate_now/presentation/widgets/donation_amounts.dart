import 'package:donation_app/features/donate_now/cubit/donate_now_cubit.dart';
import 'package:donation_app/features/donate_now/cubit/donate_now_states.dart';
import 'package:donation_app/features/donate_now/presentation/widgets/donation_amount_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DonationAmounts extends StatelessWidget {
  const DonationAmounts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DonateNowCubit, DonateNowStates>(
      builder: (context, state) {
        var cubit = DonateNowCubit.get(context);

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsetsDirectional.only(top: 23, bottom: 40, end: 5),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 2.5,
          ),
          itemCount: cubit.amounts.length,
          itemBuilder: (context, index) {
            return DonationAmountItem(amount: cubit.amounts[index]);
          },
        );
      },
    );
  }
}
