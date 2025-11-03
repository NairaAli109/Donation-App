import 'package:donation_app/core/helpers/prefrences_helper.dart';
import 'package:donation_app/core/routing/app_routes.dart';
import 'package:donation_app/my_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await PreferencesHelper.init();

  runApp(MyApp(appRouter: AppRouter()));
}
