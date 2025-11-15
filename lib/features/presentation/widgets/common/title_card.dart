import 'package:flutter/material.dart';

import '../../../../core/themes/color_theme.dart';

class TitleCard extends StatelessWidget {
  final String title;
  const TitleCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorTheme>()!;

    return Column(
      children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'See More',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: colors.primary,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
