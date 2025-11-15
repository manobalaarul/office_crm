import 'package:flutter/material.dart';
import 'package:office_app/core/constants/app_config.dart';
import 'package:office_app/features/presentation/screens/maintab/main_tab.dart';

import 'core/themes/color_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppContansts.appName,
      theme: ThemeData(
        brightness: Brightness.light,
        extensions: [
          AppColorTheme(
            primary: const Color(0xFF80B500),
            primaryText: const Color(0xff4A4B4D),
            secondaryText: const Color(0xff7C7D7E),
            textfield: const Color(0xffF2F2F2),
            placeholder: const Color(0xff929292),
            background: const Color(0xffDFDEDE),
          ),
        ],
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        extensions: [
          AppColorTheme(
            primary: const Color(0xFF80B500),
            primaryText: Colors.white,
            secondaryText: const Color(0xff7C7D7E),
            textfield: const Color(0xffD5D5D5),
            placeholder: const Color(0xffB6B7B7),
            background: const Color(0xFF1C1C1C),
          ),
        ],
      ),
      home: const MainTab(),
    );
  }
}
