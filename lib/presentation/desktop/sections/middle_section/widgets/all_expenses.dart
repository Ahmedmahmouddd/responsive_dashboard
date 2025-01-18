import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/expenses_horizontal_items.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          DropDownMenuHeader(header: "All Expenses"),
          ExpensesHorizontalItems(),
        ],
      ),
    );
  }
}
