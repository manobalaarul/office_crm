import 'package:flutter/material.dart';

import 'color_theme.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  extensions: [
    AppColorTheme(
      primary: const Color(0xFF80B500),
      primaryText: const Color(0xff4A4B4D),
      secondaryText: const Color(0xff7C7D7E),
      textfield: const Color(0xffF2F2F2),
      placeholder: const Color(0xff929292),
      background: const Color.fromARGB(255, 248, 245, 245),
    ),
  ],
);
