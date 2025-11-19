import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/horizontal_spacer.dart';
import 'package:flutter/material.dart';

class PaymentOption extends StatelessWidget {
  const PaymentOption({
    super.key,
    required this.label,
    required this.value,
    required this.selectedMethod,
    required this.onChanged, required this.cardIconPath,
  });

  final String label;
  final String value;
  final String? selectedMethod;
  final ValueChanged<String> onChanged;
  final String cardIconPath;

  @override
  Widget build(BuildContext context) {
    final bool isSelected = selectedMethod == value;

    return InkWell(
      onTap: () => onChanged(value),
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? AppColors.primaryColorForCharities : AppColors.grey2,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            CustomSvgIcon(assetName: cardIconPath),
            HorizontalSpace(width: 16),
            CustomText(
              text: label,
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: AppColors.grey8,
            ),
            const Spacer(),
            Radio<String>(
              value: value,
              groupValue: selectedMethod,
              onChanged: (val) {
                if (val != null) onChanged(val);
              },
              activeColor: AppColors.primaryColorForCharities,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
                fillColor: MaterialStateColor.resolveWith((states) {
                  if (states.contains(MaterialState.selected)) {
                    return AppColors.primaryColorForCharities;
                  }
                  return AppColors.grey2;
                })
            ),
          ],
        ),
      ),
    );
  }
}