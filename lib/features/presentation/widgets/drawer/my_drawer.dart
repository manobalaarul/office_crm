// crm_drawer.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/themes/color_theme.dart';
import '../../../../localization/localization_bloc.dart';

class MyDrawer extends StatelessWidget {
  final String userName;
  final String userEmail;
  final String? userImageUrl;

  const MyDrawer({
    super.key,
    required this.userName,
    required this.userEmail,
    this.userImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorTheme>()!;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [colors.primary, colors.background],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: userImageUrl != null
                  ? NetworkImage(userImageUrl!)
                  : null,
              child: userImageUrl == null
                  ? Text(
                      userName.isNotEmpty ? userName[0].toUpperCase() : 'U',
                      style: const TextStyle(
                        fontSize: 40.0,
                        color: Colors.blue,
                      ),
                    )
                  : null,
            ),
            accountName: Text(
              userName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(userEmail),
          ),
          _buildDrawerItem(
            icon: Icons.dashboard,
            title: 'Dashboard',
            iconColor: colors.primary,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          _buildDrawerItem(
            icon: Icons.people,
            title: 'Clients',
            iconColor: colors.primary,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          _buildDrawerItem(
            icon: Icons.business,
            title: 'Companies',
            iconColor: colors.primary,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          _buildDrawerItem(
            icon: Icons.currency_rupee,
            title: 'Deals',
            iconColor: colors.primary,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          _buildDrawerItem(
            icon: Icons.task_alt,
            title: 'Tasks',
            iconColor: colors.primary,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          _buildDrawerItem(
            icon: Icons.calendar_today,
            title: 'Calendar',
            iconColor: colors.primary,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          _buildDrawerItem(
            icon: Icons.analytics,
            title: 'Reports',
            iconColor: colors.primary,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Divider(),
          _buildDrawerItem(
            icon: Icons.settings,
            title: 'Settings',
            iconColor: colors.primary,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<LocalizationBloc>().add(LoadLocalization("en"));
                },
                child: const Text("English"),
              ),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {
                  context.read<LocalizationBloc>().add(LoadLocalization("ta"));
                },
                child: const Text("தமிழ்"),
              ),
            ],
          ),

          _buildDrawerItem(
            icon: Icons.help_outline,
            title: 'Help & Support',
            iconColor: colors.primary,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          _buildDrawerItem(
            icon: Icons.logout,
            title: 'Logout',
            iconColor: Colors.red,
            onTap: () {
              Navigator.pop(context);
              _showLogoutDialog(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color? iconColor,
  }) {
    return ListTile(
      leading: Icon(icon, color: iconColor ?? Colors.blue),
      title: Text(title, style: const TextStyle(fontSize: 16)),
      onTap: onTap,
      hoverColor: Colors.blue.shade50,
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Logout'),
          content: const Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Logout', style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}
