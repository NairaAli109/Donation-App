import 'package:donation_app/core/helpers/localization/app_localization.dart';
import 'package:donation_app/core/helpers/localization/local_cubit.dart';
import 'package:donation_app/core/helpers/prefrences_helper.dart';
import 'package:donation_app/core/helpers/spacer.dart';
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
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                var cubit = context.read<LocaleCubit>();
                setState(() {
                  cubit.toArabic();
                  PreferencesHelper.saveLang(lang: "arabic");
                  print("arabic");
                });
              },
              child: Container(
                width: 50,
                height: 50,
                color: Colors.redAccent,
                child: Text(AppLocalizations.of(context).arabic_lang),
              ),
            ),
            HorizontalSpace(width: 8),
            GestureDetector(
              onTap: () {
                var cubit = context.read<LocaleCubit>();
                setState(() {
                  cubit.toEnglish();
                  PreferencesHelper.saveLang(lang: "english");
                  print("english");
                });
              },
              child: Container(
                width: 50,
                height: 50,
                color: Colors.redAccent,
                child: Text(AppLocalizations.of(context).english_lang),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

