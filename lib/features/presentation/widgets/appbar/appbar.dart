import 'package:flutter/material.dart';

import '../../../../core/constants/app_config.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String role;
  const MyAppBar({super.key, required this.title, required this.role});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppContansts.primaryColor,
      leading: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: IconButton(
          color: Colors.grey,
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Handle menu action
          },
        ),
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
        Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.grey.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: IconButton(
            color: Colors.grey,
            icon: const Icon(Icons.person, color: Colors.white),
            onPressed: () {
              // Handle menu action
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.grey.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: IconButton(
            color: Colors.grey,
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {
              // Handle menu action
            },
          ),
        ),
      ],
    );
  }

  // 👇 Mandatory override
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
