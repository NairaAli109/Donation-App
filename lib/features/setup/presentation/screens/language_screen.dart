import 'package:donation_app/core/helpers/app_images.dart';
import 'package:donation_app/core/helpers/extensions.dart';
import 'package:donation_app/core/helpers/localization/app_localization.dart';
import 'package:donation_app/core/helpers/localization/local_cubit.dart';
import 'package:donation_app/core/helpers/prefrences_helper.dart';
import 'package:donation_app/core/routing/app_routes_names.dart';
import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_assets_image.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/horizontal_spacer.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/setup/presentation/widgets/language/lang_drop_down.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: "اختر اللغة",
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
              VerticalSpace(height: 16),
              CustomText(
                text:
                    ".أختر اللغة التي تفضلها  هذا يساعدنا على تقديم خدمة أفضل لك",
                fontSize: 14,
                color: AppColors.grey,
              ),
              VerticalSpace(height: 32),
              Align(
                alignment: Alignment.centerRight,
                child: CustomText(
                  text: "حدد اللغة",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.start,
                ),
              ),
              VerticalSpace(height: 10),
              LangDropDown(),
              VerticalSpace(height: 32),
              CustomButton(
                text: "استمرار",
                onTap: () {
                  var cubit = context.read<LocaleCubit>();
                  if (cubit.selectedLanguage != null) {
                    print(
                      "cubit.selectedLanguage::: ${cubit.selectedLanguage}",
                    );
                    context.pushNamedAndRemoveAll(AppRoutesNames.setupScreen);
                  } else {
                    null;
                  }
                },
              ),
              VerticalSpace(height: 16),
              CustomText(
                text: "يمكنك تغيير اللغة لاحقًا من الإعدادات مع خدمة الدعم",
                color: AppColors.grey,
              ),
            ],
          ),
          // child: Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     GestureDetector(
          //       onTap: () {
          //         var cubit = context.read<LocaleCubit>();
          //         setState(() {
          //           cubit.toArabic();
          //           PreferencesHelper.saveLang(lang: "arabic");
          //           print("arabic");
          //         });
          //       },
          //       child: Container(
          //         width: 50,
          //         height: 50,
          //         color: Colors.redAccent,
          //         child: Text(AppLocalizations.of(context).arabic_lang),
          //       ),
          //     ),
          //     HorizontalSpace(width: 8),
          //     GestureDetector(
          //       onTap: () {
          //         var cubit = context.read<LocaleCubit>();
          //         setState(() {
          //           cubit.toEnglish();
          //           PreferencesHelper.saveLang(lang: "english");
          //           print("english");
          //         });
          //       },
          //       child: Container(
          //         width: 50,
          //         height: 50,
          //         color: Colors.redAccent,
          //         child: Text(AppLocalizations.of(context).english_lang),
          //       ),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
