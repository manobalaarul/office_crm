import 'package:flutter/material.dart';

import '../common/shortcut_card.dart';

class DashboardShortcuts extends StatelessWidget {
  const DashboardShortcuts({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          ShortcutCard(title: 'Projects', icon: Icons.cases),
          ShortcutCard(title: 'Task', icon: Icons.task),
          ShortcutCard(title: 'Reports', icon: Icons.report),
          ShortcutCard(title: 'Clients', icon: Icons.person),
          ShortcutCard(title: 'Meeting', icon: Icons.video_call),
        ],
      ),
    );
  }
}
