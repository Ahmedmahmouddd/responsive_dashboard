import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/all_expenses/all_expenses.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/drawer/custom_dawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Row(
        children: [
          const Expanded(flex: 2, child: CustomDrawer()),
          const SizedBox(width: 16),
          Expanded(flex: 9, child: AllExpenses()),
        ],
      ),
    );
  }
}
