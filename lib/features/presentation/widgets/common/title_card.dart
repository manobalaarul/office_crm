import 'package:flutter/material.dart';
import 'package:office_app/core/constants/app_config.dart';

class TitleCard extends StatelessWidget {
  final String title;
  const TitleCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
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
                color: AppContansts.primaryColor,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
