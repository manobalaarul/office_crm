import 'package:flutter/material.dart';
import 'package:office_app/localization/widget/text_widget.dart';

import '../../../../core/themes/color_theme.dart';

class ShortcutCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final double? fontSize;
  final double? width;
  final VoidCallback onTap;
  const ShortcutCard({
    super.key,
    required this.title,
    required this.icon,
    required this.fontSize,
    required this.width,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    final colors = Theme.of(context).extension<AppColorTheme>()!;

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: 1,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          width: mediaQuery.width * (width ?? 0.25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, size: 20.0, color: colors.primary),
              const SizedBox(height: 8.0),
              Text(
                overflow: TextOverflow.ellipsis,
                t(context, title),
                style: TextStyle(
                  fontSize: fontSize ?? 15.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
