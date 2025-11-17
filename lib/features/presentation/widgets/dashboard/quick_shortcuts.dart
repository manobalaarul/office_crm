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
            fontSize: 15.0,
            width: 0.3,
          ),
          ShortcutCard(
            title: 'Create Task',
            icon: Icons.task,
            fontSize: 15.0,
            width: 0.3,
          ),
          ShortcutCard(
            title: 'Create Bill',
            icon: Icons.inventory_outlined,
            fontSize: 15.0,
            width: 0.3,
          ),
          ShortcutCard(
            title: 'Add Bill',
            icon: Icons.receipt,
            fontSize: 15.0,
            width: 0.3,
          ),
        ],
      ),
    );
  }
}
