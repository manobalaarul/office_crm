import 'package:flutter/material.dart';
import 'package:office_app/features/presentation/widgets/appbar/appbar.dart';
import 'package:office_app/features/presentation/widgets/charts/dash_chart.dart';
import 'package:office_app/features/presentation/widgets/common/title_card.dart';
import 'package:office_app/features/presentation/widgets/dashboard/dashboard_shortcuts.dart';
import 'package:office_app/features/presentation/widgets/dashboard/quick_shortcuts.dart';
import 'package:office_app/features/presentation/widgets/dashboard/taskcount.dart';

import '../../../widgets/dashboard/recent_activity.dart';
import '../../../widgets/drawer/my_drawer.dart';

class AdminDashboardScreen extends StatefulWidget {
  const AdminDashboardScreen({super.key});

  @override
  State<AdminDashboardScreen> createState() => _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends State<AdminDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Welcome, Mano', role: 'Admin'),
      drawer: const MyDrawer(userName: 'Mano', userEmail: 'mano@example.com'),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Taskcount(),
              TitleCard(title: 'Shortcuts'),
              DashboardShortcuts(),
              TitleCard(title: 'Quick Options'),
              QuickShortcuts(),
              TitleCard(title: 'Project Overview'),
              DashChart(),
              TitleCard(title: 'Recent Acitivities'),
              RecentActivity(),
            ],
          ),
        ),
      ),
    );
  }
}
