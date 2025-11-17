import 'package:flutter/material.dart';
import 'package:office_app/features/presentation/widgets/common/activity_tab.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ActivityTab(),
        ActivityTab(),
        ActivityTab(),
        ActivityTab(),
        ActivityTab(),
      ],
    );
  }
}
