import 'package:flutter/material.dart';
import 'package:office_app/features/presentation/widgets/appbar/appbar.dart';
import 'package:office_app/features/presentation/widgets/common/title_card.dart';
import 'package:office_app/features/presentation/widgets/dashboard/taskcount.dart';

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
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Taskcount(),
            TitleCard(title: 'Recent Activities'),
          ],
        ),
      ),
    );
  }
}
