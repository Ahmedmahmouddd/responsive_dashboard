import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/inverse_quick_invoice_button.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/quick_invoice_button.dart';

class QuickInvoiceButtonsRow extends StatelessWidget {
  const QuickInvoiceButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Expanded(child: QuickInvoiceButton()),
          SizedBox(width: 12),
          Expanded(child: InverseQuickInvoiceButton()),
        ],
      ),
    );
  }
}
