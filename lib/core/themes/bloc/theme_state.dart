part of 'theme_bloc.dart';

class ThemeState {
  final bool isDark;

  ThemeState({required this.isDark});

  ThemeState copyWith({bool? isDark}) =>
      ThemeState(isDark: isDark ?? this.isDark);
}
