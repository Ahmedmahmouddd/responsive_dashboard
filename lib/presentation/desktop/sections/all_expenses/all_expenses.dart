import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/app_images.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/all_expenses/all_expenses_header.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/all_expenses/all_expenses_item.dart';

class AllExpenses extends StatefulWidget {
  const AllExpenses({super.key});

  @override
  State<AllExpenses> createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  final items = [
    const AllExpensesItemModel(
      image: Assets.Balance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensesItemModel(
      image: Assets.Income,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensesItemModel(
      image: Assets.Expenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                const AllExpensesHeader(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: items.asMap().entries.map(
                      (e) {
                        int index = e.key;
                        var item = e.value;
                        return Expanded(
                          child: GestureDetector(
                            onTap: () => setState(() {
                              selectedIndex = index;
                            }),
                            child: Padding(
                                padding: EdgeInsets.all(index == 1 ? 12 : 0),
                                child: AllExpensesItem(itemModel: item, isSelected: selectedIndex == index)),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
