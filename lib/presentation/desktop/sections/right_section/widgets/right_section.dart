import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/bloc/bank_card_dot_indicator_cubit/bank_card_dot_indicator_cubit.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/my_cards.dart';

class RightSection extends StatelessWidget {
  const RightSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocProvider(
          create: (context) => BankCardDotIndicatorCubit(),
          child: const MyCards(),
        ),
      ],
    );
  }
}
