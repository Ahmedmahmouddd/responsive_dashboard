import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, right: 12, left: 12, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Quick Invoice", style: AppStyles.styleSemiBold20(context)),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Icon(Icons.add, size: 20, color: Color(0xFF4EB7F2)),
            ),
          )
        ],
      ),
    );
  }
}
