import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("All Expenses", style: AppStyles.styleSemiBold20(context)),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey[100]!, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Text("Monthly", style: AppStyles.styleMedium16(context)),
                const Icon(Icons.keyboard_arrow_down_rounded, color: Color(0xFF064061))
              ]),
            ),
          )
        ],
      ),
    );
  }
}
