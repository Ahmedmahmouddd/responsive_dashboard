import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/all_expenses.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/quick_invoice.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      AllExpenses(),
      SizedBox(width: 10),
      QuickInvoice(),
    ]);
  }
}