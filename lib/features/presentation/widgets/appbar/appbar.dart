import 'package:flutter/material.dart';

import '../../../../core/themes/color_theme.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String role;
  const MyAppBar({super.key, required this.title, required this.role});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorTheme>()!;

    return AppBar(
      backgroundColor: colors.primary,
      leading: IconButton(
        color: Colors.grey,
        icon: const Icon(Icons.menu, color: Colors.white),
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
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          Text(role, style: TextStyle(color: Colors.white, fontSize: 15)),
        ],
      ), // optional
      actions: [
        IconButton(
          color: Colors.grey,
          icon: const Icon(Icons.person, color: Colors.white),
          onPressed: () {},
        ),

        IconButton(
          color: Colors.grey,
          icon: const Icon(Icons.settings, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }

  // 👇 Mandatory override
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
