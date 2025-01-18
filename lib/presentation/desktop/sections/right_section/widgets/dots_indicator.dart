import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/bloc/bank_card_dot_indicator_cubit/bank_card_dot_indicator_cubit.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: BlocBuilder<BankCardDotIndicatorCubit, int>(
      builder: (context, activeIndex) {
          return Row(
            children: List.generate(
              3,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: AnimatedContainer(
                  width: activeIndex == index ? 30 : 10,
                  height: 10,
                  duration: const Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                      color: activeIndex == index ? const Color(0xFF4DB7F2) : Colors.grey[50],
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
