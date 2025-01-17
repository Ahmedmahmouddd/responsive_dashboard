import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/latest_transactions.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/quick_invoice_button_row.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/quick_invoice_form.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const QuickInvoiceHeader(),
        const LatestTransactions(),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Divider(height: 48, color: Colors.grey[100])),
        const QuickInvoiceForm(),
        const SizedBox(height: 24),
        const QuickInvoiceButtonsRow(),
        const SizedBox(height: 12),
      ],
    ));
  }
}
