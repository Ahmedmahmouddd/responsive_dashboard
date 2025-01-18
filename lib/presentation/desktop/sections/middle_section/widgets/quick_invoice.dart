import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/custom_dividor.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/latest_transactions.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/quick_invoice_button_row.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/quick_invoice_form.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        LatestTransactions(),
        CustomDivider(),
        QuickInvoiceForm(),
        SizedBox(height: 24),
        QuickInvoiceButtonsRow(),
        SizedBox(height: 12),
      ],
    ));
  }
}
