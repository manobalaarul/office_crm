import 'package:flutter/material.dart';

import 'color_theme.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  extensions: [
    AppColorTheme(
      primary: const Color(0xFF80B500),
      primaryShade: const Color(0xFFA6C072),
      primaryText: Colors.white,
      secondaryText: const Color(0xff7C7D7E),
      textfield: const Color(0xffD5D5D5),
      placeholder: const Color(0xffB6B7B7),
      background: const Color(0xFF1C1C1C),
    ),
  ],
);
