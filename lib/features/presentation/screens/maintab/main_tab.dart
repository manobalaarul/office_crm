import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/themes/color_theme.dart';
import '../dashboard/admin/a_dashboard_screen.dart';

class MainTab extends StatefulWidget {
  const MainTab({super.key});

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const AdminDashboardScreen(),
    const AdminDashboardScreen(),
    const AdminDashboardScreen(),
    const AdminDashboardScreen(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorTheme>()!;

    return Scaffold(
      body: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (didPop) return;
          _showExitConfirmation(context);
        },
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: colors.background,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 24,
              color: _currentIndex == 0 ? colors.primary : colors.primaryText,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
              size: 24,
              color: _currentIndex == 1 ? colors.primary : colors.primaryText,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dynamic_feed_outlined,
              size: 24,
              color: _currentIndex == 2 ? colors.primary : colors.primaryText,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.work_outline,
              size: 24,
              color: _currentIndex == 3 ? colors.primary : colors.primaryText,
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  void _showExitConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text("Exit App"),
        content: const Text("Are you sure you want to exit?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () => SystemNavigator.pop(),
            child: const Text("Exit"),
          ),
        ],
      ),
    );
  }
}
