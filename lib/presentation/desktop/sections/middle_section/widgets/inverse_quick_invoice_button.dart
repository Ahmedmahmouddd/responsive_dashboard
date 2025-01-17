import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/app_styles.dart';

class InverseQuickInvoiceButton extends StatelessWidget {
  const InverseQuickInvoiceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          overlayColor: const Color(0xFFFFFFFF),
          shadowColor: Colors.transparent,
          backgroundColor: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.all(24),
        ),
        onPressed: () {},
        child: Text(
          "Send money",
          style: AppStyles.styleSemiBold16(context).copyWith(color: Colors.white),
        ));
  }
}
