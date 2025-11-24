import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/di_module.dart';
import 'repo/localization_repo.dart';

part 'localization_event.dart';
part 'localization_state.dart';

class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  final LocalizationRepo repo;

  LocalizationBloc()
    : repo = sl<LocalizationRepo>(),
      super(LocalizationState(strings: {})) {
    on<LoadLocalization>(_onLoadLocalization);
    on<UpdateFromServer>(_onUpdateFromServer);
  }

  Future<void> _onLoadLocalization(LoadLocalization event, Emitter emit) async {
    final data = await repo.readLang(event.langCode);
    emit(LocalizationState(strings: data));
  }

  Future<void> _onUpdateFromServer(UpdateFromServer event, Emitter emit) async {
    await repo.fetchAndSaveLang(event.langCode);
    final data = await repo.readLang(event.langCode);
    emit(LocalizationState(strings: data));
  }
}
