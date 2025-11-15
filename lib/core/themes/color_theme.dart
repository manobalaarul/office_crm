import 'package:flutter/material.dart';

class AppColorTheme extends ThemeExtension<AppColorTheme> {
  final Color primary;
  final Color primaryText;
  final Color secondaryText;
  final Color textfield;
  final Color placeholder;
  final Color background;

  AppColorTheme({
    required this.primary,
    required this.primaryText,
    required this.secondaryText,
    required this.textfield,
    required this.placeholder,
    required this.background,
  });

  @override
  AppColorTheme copyWith({
    Color? primary,
    Color? primaryText,
    Color? secondaryText,
    Color? textfield,
    Color? placeholder,
    Color? background,
  }) {
    return AppColorTheme(
      primary: primary ?? this.primary,
      primaryText: primaryText ?? this.primaryText,
      secondaryText: secondaryText ?? this.secondaryText,
      textfield: textfield ?? this.textfield,
      placeholder: placeholder ?? this.placeholder,
      background: background ?? this.background,
    );
  }

  @override
  AppColorTheme lerp(ThemeExtension<AppColorTheme>? other, double t) {
    if (other is! AppColorTheme) return this;

    return AppColorTheme(
      primary: Color.lerp(primary, other.primary, t)!,
      primaryText: Color.lerp(primaryText, other.primaryText, t)!,
      secondaryText: Color.lerp(secondaryText, other.secondaryText, t)!,
      textfield: Color.lerp(textfield, other.textfield, t)!,
      placeholder: Color.lerp(placeholder, other.placeholder, t)!,
      background: Color.lerp(background, other.background, t)!,
    );
  }
}
