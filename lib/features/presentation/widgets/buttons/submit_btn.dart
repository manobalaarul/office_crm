import 'package:flutter/material.dart';

import '../../../../core/themes/color_theme.dart';

class SubmitBtn extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const SubmitBtn({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorTheme>()!;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(8),
        backgroundColor: colors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(7),
        ),
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: 20)),
    );
  }
}
