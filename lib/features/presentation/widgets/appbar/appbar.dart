import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/themes/bloc/theme_bloc.dart';
import '../../../../core/themes/color_theme.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String role;
  const MyAppBar({super.key, required this.title, required this.role});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorTheme>()!;

    return AppBar(
      backgroundColor: colors.background,
      leading: IconButton(
        color: Colors.grey,
        icon: Icon(Icons.menu, color: colors.primary,),
        onPressed: () {
          // Handle menu action
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
          Text(role, style: TextStyle(color: colors.primary, fontSize: 15)),
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

        IconButton(
          color: Colors.grey,
          icon: Icon(Icons.person, color: colors.primary),
          onPressed: () {},
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
