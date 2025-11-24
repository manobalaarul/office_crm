import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/clients/add_client_page.dart';
import '../common/shortcut_card.dart';

class QuickShortcuts extends StatelessWidget {
  const QuickShortcuts({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ShortcutCard(
            title: 'add_client',
            icon: Icons.person_add,
            fontSize: 13.0,
            width: 0.25,
            onTap: () {
              Get.to(AddClientPage());
            },
          ),
          ShortcutCard(
            title: 'Add Task',
            icon: Icons.task,
            fontSize: 13.0,
            width: 0.25,
            onTap: () {},
          ),
          ShortcutCard(
            title: 'Create Bill',
            icon: Icons.inventory_outlined,
            fontSize: 13.0,
            width: 0.25,
            onTap: () {},
          ),
          ShortcutCard(
            title: 'Add Bill',
            icon: Icons.receipt,
            fontSize: 13.0,
            width: 0.25,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
