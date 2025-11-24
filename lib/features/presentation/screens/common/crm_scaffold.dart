import 'package:flutter/material.dart';
import 'package:office_app/features/presentation/widgets/appbar/appbar.dart';
import 'package:office_app/features/presentation/widgets/drawer/my_drawer.dart';

class CrmScaffold extends StatefulWidget {
  final String title;
  final String? role;
  final bool? showRole;
  final Widget body;

  const CrmScaffold({
    super.key,
    required this.title,
    this.role,
    this.showRole,
    required this.body,
  });

  @override
  State<CrmScaffold> createState() => _CrmScaffoldState();
}

class _CrmScaffoldState extends State<CrmScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: widget.title,
        role: widget.role,
        showRole: widget.showRole,
      ),
      drawer: MyDrawer(
        userName: "Manobala",
        userEmail: "manobalaarul@gmail.com",
      ),
      body: widget.body,
    );
  }
}
