import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/app_styles.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile(
      {super.key, required this.title, required this.subtitle, required this.color, required this.amount});

  final String title;
  final String subtitle;
  final Color color;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
      child: Card(
        color: Colors.grey[50],
        elevation: 0,
        child: Center(
          child: ListTile(
            title: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                  fit: BoxFit.scaleDown, child: Text(title, style: AppStyles.styleSemiBold16(context))),
            ),
            subtitle: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                  fit: BoxFit.scaleDown, child: Text(subtitle, style: AppStyles.styleRegular12(context))),
            ),
            trailing: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(amount, style: AppStyles.styleSemiBold20(context).copyWith(color: color))),
          ),
        ),
      ),
    );
  }
}
