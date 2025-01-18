import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/app_styles.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/transaction_tile.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12, left: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Transaction History", style: AppStyles.styleSemiBold20(context)),
              Text("See all",
                  style: AppStyles.styleMedium16(context).copyWith(color: const Color(0xFF4EB7F2))),
            ],
          ),
        ),
        const TransactionTile(
            title: "Money Transfer", subtitle: '12 Jan, 2025', color: Colors.green, amount: r'$230'),
        const TransactionTile(
            title: "Cash Withdrawal", subtitle: '15 Jan, 2025', color: Color(0xFFF9675C), amount: r'-$150'),
        const TransactionTile(
            title: "Salary", subtitle: '19 Jan, 2025', color: Colors.green, amount: r'$1350'),
        const SizedBox(height: 6),
      ],
    );
  }
}
