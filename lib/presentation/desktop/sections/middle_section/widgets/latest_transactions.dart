import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/app_styles.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/latest_transactions_listview.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Text("Latest Transactions", style: AppStyles.styleMedium16(context)),
        ),
        // const SizedBox(height: 12),
        const LatestTransactionsListview()
      ],
    );
  }
}
