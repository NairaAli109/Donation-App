import 'package:donation_app/core/helpers/localization/app_localization.dart';
import 'package:donation_app/core/helpers/localization/local_cubit.dart';
import 'package:donation_app/core/helpers/prefrences_helper.dart';
import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_assets_image.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LangDropDown extends StatefulWidget {
  const LangDropDown({super.key});

  @override
  State<LangDropDown> createState() => _LangDropDownState();
}

class _LangDropDownState extends State<LangDropDown> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> languages = [
      {
        'key': 'arabic',
        'name': AppLocalizations.of(context).arabic_lang,
        'flag': Assets.iconsLangFlagImage,
      },
      {
        'key': 'english',
        'name': AppLocalizations.of(context).english_lang,
        'flag': Assets.iconsLangFlagImage,
      },
    ];

    return BlocBuilder<LocaleCubit, Locale>(
      builder: (context, state) {
        var cubit = context.read<LocaleCubit>();

        return Directionality(
          textDirection: TextDirection.rtl,
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: CustomText(
                text: "حدد اللغة",
                fontSize: 16,
                color: AppColors.grey4,
              ),
              value: cubit.selectedLanguage,
              items: languages.map((lang) {
                return DropdownMenuItem<String>(
                  value: lang['key'],
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      children: [
                        CustomAssetsImage(assetName: lang['flag']!),
                        const SizedBox(width: 8),
                        CustomText(text: lang['name']!, fontSize: 16),
                      ],
                    ),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  cubit.selectedLanguage = value;

                  if (cubit.selectedLanguage == 'arabic') {
                    cubit.toArabic();
                    PreferencesHelper.saveLang(lang: "arabic");
                  } else {
                    cubit.toEnglish();
                    PreferencesHelper.saveLang(lang: "english");
                  }
                });
              },
              buttonStyleData: ButtonStyleData(
                height: 48,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.grey2),
                  color: AppColors.mainWhite,
                ),
              ),
              iconStyleData: IconStyleData(
                icon: CustomSvgIcon(
                  assetName: cubit.selectedLanguage == null
                      ? Assets.iconsArrowDownIcon
                      : Assets.iconsCircularCheckIcon,
                ),
                iconSize: 16,
                iconEnabledColor: AppColors.mainBlack,
              ),
              dropdownStyleData: DropdownStyleData(
                direction: DropdownDirection.right,
                maxHeight: 161,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.backgroundColor,
                  border: Border.all(color: AppColors.grey3),
                ),
                offset: const Offset(0, -16),
              ),
              menuItemStyleData: const MenuItemStyleData(height: 60),
            ),
          ),
        );
      },
    );
  }
}
