import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:office_app/core/constants/app_config.dart';
import 'package:office_app/features/presentation/screens/maintab/main_tab.dart';

import 'app_bloc_provider.dart';
import 'core/themes/bloc/theme_bloc.dart';
import 'core/themes/dark_theme.dart';
import 'core/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBlocProvider.providers,
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: AppContansts.appName,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: state.isDark ? ThemeMode.dark : ThemeMode.light,
            home: const MainTab(),
          );
        },
      ),
    );
  }
}
