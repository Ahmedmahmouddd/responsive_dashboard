import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/income_list_tile.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<Widget> items = [
    IncomeListTile(color: Color(0xFF064061), title: 'SavingsSavings', trailing: '40%'),
    IncomeListTile(color: Color(0xFF087DBC), title: 'DesignDesign', trailing: '25%'),
    IncomeListTile(color: Color(0xFF4EB7F2), title: 'PaymentPayment', trailing: '20%'),
    IncomeListTile(color: Color(0xFFFAFAFA), title: 'OthersOthers', trailing: '15%'),
  ];

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: items,
    );
  }
}
