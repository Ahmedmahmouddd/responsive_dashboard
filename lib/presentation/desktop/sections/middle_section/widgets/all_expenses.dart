import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/expenses_horizontal_items.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: const Column(
              children: [
                AllExpensesHeader(),
                ExpensesHorizontalItems(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
