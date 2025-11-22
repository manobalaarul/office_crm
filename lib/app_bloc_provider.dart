import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

import 'core/themes/bloc/theme_bloc.dart';

class AppBlocProvider {
  static List<SingleChildWidget> get providers {
    return [BlocProvider<ThemeBloc>(create: (context) => ThemeBloc())];
  }
}
