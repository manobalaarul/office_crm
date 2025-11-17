import 'package:flutter/material.dart';

import '../../../../core/themes/color_theme.dart';

class ShortcutCard extends StatelessWidget {
  final String title;
  final IconData icon;
  const ShortcutCard({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    final colors = Theme.of(context).extension<AppColorTheme>()!;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 1,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: mediaQuery.width * 0.2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 20.0,color: colors.primary,),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
