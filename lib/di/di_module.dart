import 'package:get_it/get_it.dart';

import '../core/network/dio_client.dart';
import '../core/themes/bloc/theme_bloc.dart';
import '../localization/localization_bloc.dart';
import '../localization/repo/localization_repo.dart';
import '../localization/repo/localization_repo_impl.dart';

final sl = GetIt.instance;

class DiModule {
  Future<void> init() async {
    //Blocs
    sl.registerFactory(() => ThemeBloc());
    sl.registerFactory(() => LocalizationBloc());

    //Repository
    sl.registerLazySingleton<LocalizationRepo>(
      () =>
          LocalizationRepoImpl(dioClient: sl(), mode: LocalizationMode.assets),
    );

    //Dio Client
    sl.registerLazySingleton(() => DioClient());
  }
}
