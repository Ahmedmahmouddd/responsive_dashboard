import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/all_expenses/active&inactive_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel, required this.isSelected});

  final AllExpensesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensessItem(itemModel: itemModel)
        : InActiveAllExpensessItem(itemModel: itemModel);
  }
}

class AllExpensesItemModel {
  final String image, title, date, price;

  const AllExpensesItemModel(
      {required this.image, required this.title, required this.date, required this.price});
}
