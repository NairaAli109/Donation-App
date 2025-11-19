import 'package:donation_app/core/helpers/app_strings.dart';
import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/features/charity_app/payment/cubit/payment/payment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CustomPhoneField extends StatelessWidget {
  const CustomPhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = PaymentCubit.get(context);

    return Container(
      decoration: BoxDecoration(
        color: AppColors.mainWhite,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.grey2, width: 1),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InternationalPhoneNumberInput(
        key: cubit.phoneFieldKey,
        textFieldController: cubit.phoneController,

        textAlign: TextAlign.right,
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: AppStrings.almaraiFont,
          color: AppColors.black,
        ),

        validator: (value) {
          if (cubit.phoneController.text.trim().isEmpty) {
            return "يجب ادخال رقم الهاتف";
          }
          return null;
        },

        onInputChanged: (number) {
          cubit.phoneNumber = number.phoneNumber;
          cubit.selectedCountry = number;
          print(number);
        },

        inputDecoration: InputDecoration(
          hintText: "000 0000 000",
          hintStyle: const TextStyle(
            color: AppColors.grey9,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: AppStrings.almaraiFont,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          border: InputBorder.none,
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(8),
          //   borderSide: const BorderSide(
          //     color: AppColors.grey2,
          //     width: 1,
          //   ),
          // ),
          // focusedBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(8),
          //   borderSide: const BorderSide(
          //     color: AppColors.primaryColorForCharities,
          //     width: 1,
          //   ),
          // ),
          // errorBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(8),
          //   borderSide: const BorderSide(color: Colors.red, width: 1),
          // ),
          // focusedErrorBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(12),
          //   borderSide: const BorderSide(color: Colors.red, width: 1),
          // ),
        ),

        selectorConfig: const SelectorConfig(
          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
          trailingSpace: false,
          leadingPadding: 12,
          showFlags: true,
        ),
        selectorTextStyle: const TextStyle(
          color: Colors.transparent,
          fontSize: 0,
        ),
        initialValue: cubit.selectedCountry,
        autoValidateMode: AutovalidateMode.onUserInteraction,
        formatInput: true,
      ),
    );
  }
}

///2
// class CustomPhoneField extends StatelessWidget {
//   const CustomPhoneField({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var cubit = PaymentCubit.get(context);
//
//     return PhoneFormField(
//       key: cubit.phoneFieldKey,
//       controller: cubit.phoneController,
//       autovalidateMode: AutovalidateMode.onUserInteraction,
//       validator: (value) {
//         if (value == null || value.nsn.isEmpty) {
//           return "يجب ادخال رقم الهاتف";
//         }
//         return null;
//       },
//       onChanged: (value) {
//         cubit.phoneNumber = value.international;
//         // field.validate();
//       },
//
//       //form field box decoration + hint style
//       decoration: InputDecoration(
//         hintText: "000 0000 000",
//         hintStyle: const TextStyle(
//           color: AppColors.grey9,
//           fontSize: 14,
//           fontWeight: FontWeight.w500,
//           fontFamily: AppStrings.almaraiFont,
//         ),
//         contentPadding: const EdgeInsets.symmetric(
//           horizontal: 16,
//           vertical: 16,
//         ),
//         border: InputBorder.none,
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: const BorderSide(color: AppColors.grey2, width: 1),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: const BorderSide(
//             color: AppColors.primaryColorForCharities,
//             width: 1,
//           ),
//         ),
//         errorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: BorderSide(color: Colors.red, width: 1),
//         ),
//         focusedErrorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(color: Colors.red, width: 1),
//         ),
//       ),
//
//       //phone number style
//       style: const TextStyle(
//         fontSize: 14,
//         fontWeight: FontWeight.w500,
//         fontFamily: AppStrings.almaraiFont,
//         color: AppColors.black,
//       ),
//       textAlignVertical: TextAlignVertical.center,
//
//       countrySelectorNavigator: CountrySelectorNavigator.bottomSheet(),
//       countryButtonStyle: CountryButtonStyle(
//         showDialCode: false,
//         dropdownIconColor:  AppColors.grey10,
//       ),
//     );
//   }
// }
///1
// class CustomPhoneField extends StatelessWidget {
//   const CustomPhoneField({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<PaymentCubit, PaymentStates>(
//       builder: (context, state) {
//         var cubit = PaymentCubit.get(context);
//
//         return Container(
//           decoration: BoxDecoration(
//             color: AppColors.mainWhite,
//             borderRadius: BorderRadius.circular(8),
//             border: Border.all(color: AppColors.grey2, width: 1),
//           ),
//           child: IntlPhoneField(
//             key: cubit.phoneFieldKey,
//             focusNode: FocusNode(),
//             autovalidateMode: AutovalidateMode.onUserInteraction,
//             controller: cubit.phoneController,
//             initialCountryCode: "SA",
//             disableLengthCheck: true,
//             autofocus: false,
//             validator: (value) {
//              cubit.mobileFormFieldValidator(value);
//             },
//
//             onChanged: (phone) {
//               cubit.phoneNumber = phone.completeNumber;
//             },
//
//             /// hint + entered text style
//             decoration: const InputDecoration(
//               hintText: "000 0000 000",
//               hintStyle: TextStyle(
//                 color: AppColors.grey9,
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//                 fontFamily: AppStrings.almaraiFont,
//               ),
//               border: InputBorder.none,
//               contentPadding: EdgeInsets.only(right: 16, left: 16),
//               prefix: HorizontalSpace(width: 16),
//             ),
//             textAlign: TextAlign.right,
//             textAlignVertical: TextAlignVertical(y: 0),
//             style: const TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w500,
//               fontFamily: AppStrings.almaraiFont,
//               color: AppColors.black,
//             ),
//
//             ///flag + country code + arrow down section
//             dropdownIcon: const Icon(
//               Icons.arrow_drop_down_outlined,
//               size: 24,
//               color: AppColors.grey10,
//             ),
//             flagsButtonPadding: const EdgeInsetsDirectional.only(start: 12),
//             dropdownIconPosition: IconPosition.trailing,
//             dropdownDecoration: BoxDecoration(
//               color: AppColors.grey11,
//               borderRadius: BorderRadius.only(
//                 topRight: Radius.circular(8),
//                 bottomRight: Radius.circular(8),
//               ),
//             ),
//             dropdownTextStyle: TextStyle(
//               fontSize: 0,
//               // fontWeight: FontWeight.w500,
//               // fontFamily: AppStrings.almaraiFont,
//               color: Colors.transparent,
//             ),
//
//             ///country dialog selection style
//             pickerDialogStyle: PickerDialogStyle(
//               searchFieldInputDecoration: const InputDecoration(
//                 hintText: "ابحث عن الدولة…",
//               ),
//               listTilePadding: const EdgeInsets.symmetric(
//                 vertical: 6,
//                 horizontal: 12,
//               ),
//               countryNameStyle: const TextStyle(
//                 fontSize: 15,
//                 fontWeight: FontWeight.w500,
//               ),
//               countryCodeStyle: const TextStyle(
//                 fontSize: 15,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
