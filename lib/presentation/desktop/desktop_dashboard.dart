import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/left_drawer/widgets/custom_dawer.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/all_expenses.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(width: 10),
        Expanded(flex: 3, child: AllExpenses()),
        SizedBox(width: 10),
        Expanded(flex: 3, child: AllExpenses()),
      ],
    );
  }
}
