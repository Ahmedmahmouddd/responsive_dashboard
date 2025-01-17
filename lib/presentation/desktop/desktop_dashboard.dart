import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/left_drawer/widgets/custom_dawer.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/all_expenses.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomDrawer()),
        SizedBox(width: 10),
        Expanded(
          flex: 5,
          child: Column(children: [
            AllExpenses(),
            SizedBox(width: 10),
            QuickInvoice(),
          ]),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              AllExpenses(),
            ],
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
