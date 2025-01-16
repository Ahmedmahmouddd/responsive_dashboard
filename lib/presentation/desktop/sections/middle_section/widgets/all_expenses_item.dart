import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/active_expenses_item.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/inactive_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel, required this.isSelected,required this.onTap});

  final ExpensesItemModel itemModel;
  final bool isSelected;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveExpensessItem(itemModel: itemModel, onTap: onTap)
        : InActiveExpensessItem(itemModel: itemModel, onTap: onTap);
  }
}

class ExpensesItemModel {
  final String image, title, date, price;

  const ExpensesItemModel(
      {required this.image, required this.title, required this.date, required this.price});
}
