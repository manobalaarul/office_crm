import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/themes/bloc/theme_bloc.dart';
import '../../../../core/themes/color_theme.dart';
import '../../../../localization/localization_bloc.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? role;
  final bool? showRole;
  const MyAppBar({
    super.key,
    required this.title,
    this.role = 'Client',
    this.showRole = true,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorTheme>()!;

    return AppBar(
      backgroundColor: colors.background,
      leading: IconButton(
        color: Colors.grey,
        icon: Icon(Icons.menu, color: colors.primary),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),

      // centerTitle: true,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: colors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          showRole!
              ? Text(
                  role!,
                  style: TextStyle(color: colors.primary, fontSize: 15),
                )
              : SizedBox.shrink(),
        ],
      ), // optional
      actions: [
        BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return IconButton(
              icon: Icon(
                state.isDark ? Icons.light_mode : Icons.dark_mode,
                color: colors.primary,
              ),
              onPressed: () {
                context.read<ThemeBloc>().add(ToggleTheme());
              },
            );
          },
        ),
        BlocBuilder<LocalizationBloc, LocalizationState>(
          builder: (context, state) {
            final lang = state.langCode; // "en" or "ta"

            final buttonLabel = lang == "ta" ? "த" : "E";

            return IconButton(
              onPressed: () {
                final newLang = lang == "en" ? "ta" : "en";
                context.read<LocalizationBloc>().add(LoadLocalization(newLang));
              },
              icon: Text(
                buttonLabel,
                style: TextStyle(
                  fontSize: lang == "en" ? 20 : 18,
                  color: colors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        ),

        IconButton(
          color: Colors.grey,
          icon: Icon(Icons.settings, color: colors.primary),
          onPressed: () {},
        ),
      ],
    );
  }

  // 👇 Mandatory override
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
