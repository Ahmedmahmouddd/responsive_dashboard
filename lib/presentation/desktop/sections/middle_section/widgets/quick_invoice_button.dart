import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/app_styles.dart';

class QuickInvoiceButton extends StatelessWidget {
  const QuickInvoiceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          overlayColor: const Color(0xFF4EB7F2),
          shadowColor: Colors.transparent,
          elevation: 0,
          backgroundColor: const Color(0xFFFFFFFF),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.all(24),
        ),
        onPressed: () {},
        child: Text(
          "Add more details",
          style: AppStyles.styleSemiBold16(context).copyWith(color: const Color(0xFF4EB7F2)),
        ));
  }
}
