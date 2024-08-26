import 'package:flutter/material.dart';
import 'package:todo_app/2_application/core/Page_config.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});


  static var pageConfig = PageConfig(icon: Icons.dashboard_rounded, name: 'overview',child: DashboardPage());



  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}