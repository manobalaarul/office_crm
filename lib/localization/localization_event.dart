part of 'localization_bloc.dart';

abstract class LocalizationEvent {}

class LoadLocalization extends LocalizationEvent {
  final String langCode;
  LoadLocalization(this.langCode);
}

class UpdateFromServer extends LocalizationEvent {
  final String langCode;
  UpdateFromServer(this.langCode);
}
