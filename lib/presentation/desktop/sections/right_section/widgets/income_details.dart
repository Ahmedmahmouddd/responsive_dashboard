import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/income_list_tile.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List items = [
    IncomeListTile(color: Color(0xFF064061), title: 'Savings', trailing: '40%'),
    IncomeListTile(color: Color(0xFF087DBC), title: 'Design', trailing: '25%'),
    IncomeListTile(color: Color(0xFF4EB7F2), title: 'Payment', trailing: '20%'),
    IncomeListTile(color: Color(0xFFFAFAFA), title: 'Others', trailing: '15%'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) => items[index],
    );
  }
}
