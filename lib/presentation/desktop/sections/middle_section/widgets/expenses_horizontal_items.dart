import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/common/utils/app_images.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/bloc/expenses_active_item_cubit/expenses_active_item_cubit.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/all_expenses_item.dart';

class ExpensesHorizontalItems extends StatelessWidget {
  const ExpensesHorizontalItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExpensesActiveItemCubit(),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocBuilder<ExpensesActiveItemCubit, int>(
          builder: (context, activeValue) {
            return Row(
              children: [
                Expanded(
                  child: AllExpensesItem(
                    itemModel: const ExpensesItemModel(
                        image: Assets.Balance, title: 'Balance', date: 'Jan 2025', price: r'$13,284'),
                    isSelected: activeValue == 0,
                    onTap: () {
                      context.read<ExpensesActiveItemCubit>().setActiveValue(0);
                    },
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: AllExpensesItem(
                    itemModel: const ExpensesItemModel(
                      image: Assets.Income,
                      title: 'Income',
                      date: 'March 2022',
                      price: r'$29,129',
                    ),
                    isSelected: activeValue == 1,
                    onTap: () {
                      context.read<ExpensesActiveItemCubit>().setActiveValue(1);
                    },
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: AllExpensesItem(
                    itemModel: const ExpensesItemModel(
                      image: Assets.Expenses,
                      title: 'Expenses',
                      date: 'April 2024',
                      price: r'$8,781',
                    ),
                    isSelected: activeValue == 2,
                    onTap: () {
                      context.read<ExpensesActiveItemCubit>().setActiveValue(2);
                    },
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
