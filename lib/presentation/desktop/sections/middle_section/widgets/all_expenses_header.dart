import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/common/utils/app_styles.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/bloc/expenses_dropdown_menu_cubit/expenses_dropdown_menu_cubit.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, right: 12, left: 12, bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("All Expenses", style: AppStyles.styleSemiBold20(context)),
          BlocProvider(
            create: (context) => ExpensesDropdownMenuCubit(),
            child: BlocBuilder<ExpensesDropdownMenuCubit, String>(
              builder: (context, activeValue) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        blurRadius: 3,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: DropdownButton<String>(
                      value: activeValue,
                      borderRadius: BorderRadius.circular(12),
                      underline: const SizedBox(),
                      dropdownColor: Colors.white,
                      hint: const Text("Select Frequency"),
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(0xFF064061),
                        size: 24,
                      ),
                      items: [
                        DropdownMenuItem(
                          value: 'Daily',
                          child: Row(
                            children: [
                              const Icon(Icons.calendar_today, size: 18, color: Color(0xFF4EB7F2)),
                              const SizedBox(width: 10),
                              Text("Daily", style: AppStyles.styleMedium16(context)),
                            ],
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'Weekly',
                          child: Row(
                            children: [
                              const Icon(Icons.date_range, size: 18, color: Colors.green),
                              const SizedBox(width: 10),
                              Text("Weekly", style: AppStyles.styleMedium16(context)),
                            ],
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'Monthly',
                          child: Row(
                            children: [
                              const Icon(Icons.calendar_month, size: 18, color: Colors.orange),
                              const SizedBox(width: 10),
                              Text("Monthly", style: AppStyles.styleMedium16(context)),
                            ],
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'Yearly',
                          child: Row(
                            children: [
                              const Icon(Icons.event, size: 18, color: Colors.red),
                              const SizedBox(width: 10),
                              Text("Yearly", style: AppStyles.styleMedium16(context)),
                            ],
                          ),
                        ),
                      ],
                      onChanged: (value) {
                        if (value != null) {
                          context.read<ExpensesDropdownMenuCubit>().setActiveValue(value);
                        }
                      },
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
