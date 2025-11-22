import 'package:get_it/get_it.dart';

import '../core/themes/bloc/theme_bloc.dart';

final sl = GetIt.instance;

class DIModule {
  void init() {
    //Blocs
    sl.registerFactory(() => ThemeBloc());
  }
}
