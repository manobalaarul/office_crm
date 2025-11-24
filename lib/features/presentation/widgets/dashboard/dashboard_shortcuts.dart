import 'package:flutter/material.dart';

import '../common/shortcut_card.dart';

class DashboardShortcuts extends StatelessWidget {
  const DashboardShortcuts({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ShortcutCard(
            title: 'Projects',
            icon: Icons.cases,
            fontSize: 15.0,
            width: 0.25,
            onTap: () {},
          ),
          ShortcutCard(
            title: 'Task',
            icon: Icons.task,
            fontSize: 15.0,
            width: 0.25,
            onTap: () {},
          ),
          ShortcutCard(
            title: 'Reports',
            icon: Icons.report,
            fontSize: 15.0,
            width: 0.25,
            onTap: () {},
          ),
          ShortcutCard(
            title: 'Clients',
            icon: Icons.person,
            fontSize: 15.0,
            width: 0.25,
            onTap: () {},
          ),
          ShortcutCard(
            title: 'Meeting',
            icon: Icons.video_call,
            fontSize: 15.0,
            width: 0.25,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
