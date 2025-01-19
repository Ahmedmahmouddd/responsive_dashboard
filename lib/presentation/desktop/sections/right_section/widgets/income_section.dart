import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/income_chart.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/income_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          DropDownMenuHeader(header: "Income"),
          SizedBox(height: 6),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: IncomeChart()),
                Expanded(child: IncomeDetails()),
              ],
            ),
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
