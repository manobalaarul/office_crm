part of 'localization_bloc.dart';

class LocalizationState {
  final Map<String, dynamic> strings;
  final String langCode;

  LocalizationState({
    required this.strings,
    required this.langCode,
  });
}
