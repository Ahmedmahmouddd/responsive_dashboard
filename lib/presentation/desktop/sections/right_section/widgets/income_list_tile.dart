import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/app_styles.dart';

class IncomeListTile extends StatelessWidget {
  const IncomeListTile({super.key, required this.color, required this.title, required this.trailing});

  final Color color;
  final String title;
  final String trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(color: color, borderRadius: const BorderRadius.all(Radius.circular(5)))),
      title: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(title, style: AppStyles.styleSemiBold16(context))),
      trailing: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(trailing,
            style: AppStyles.styleSemiBold16(context).copyWith(color: const Color(0xFF4EB7F2))),
      ),
    );
  }
}
