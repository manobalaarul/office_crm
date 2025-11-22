import 'package:flutter/material.dart';

import '../common/shortcut_card.dart';

class QuickShortcuts extends StatelessWidget {
  const QuickShortcuts({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          ShortcutCard(
            title: 'Add Clients',
            icon: Icons.person_add,
            fontSize: 13.0,
            width: 0.25,
          ),
          ShortcutCard(
            title: 'Add Task',
            icon: Icons.task,
            fontSize: 13.0,
            width: 0.25,
          ),
          ShortcutCard(
            title: 'Create Bill',
            icon: Icons.inventory_outlined,
            fontSize: 13.0,
            width: 0.25,
          ),
          ShortcutCard(
            title: 'Add Bill',
            icon: Icons.receipt,
            fontSize: 13.0,
            width: 0.25,
          ),
        ],
      ),
    );
  }
}
