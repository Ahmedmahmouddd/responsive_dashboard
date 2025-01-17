import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Expanded(
                  child: TitleTextField(
                text: "Customer Name",
                hint: 'Type customer name',
              )),
              SizedBox(width: 12),
              Expanded(
                  child: TitleTextField(
                text: "Customer Email",
                hint: 'Type customer email',
              )),
            ],
          ),
        ),
         SizedBox(height: 24),
         Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Expanded(
                  child: TitleTextField(
                text: "Item Name",
                hint: 'Type item name',
              )),
              SizedBox(width: 12),
              Expanded(
                  child: TitleTextField(
                text: "Item amount",
                hint: 'USD',
              )),
            ],
          ),
        ),],);
  }
}