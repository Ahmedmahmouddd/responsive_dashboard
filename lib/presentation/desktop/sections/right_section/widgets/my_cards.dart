import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/custom_dividor.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/bloc/bank_card_dot_indicator_cubit/bank_card_dot_indicator_cubit.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/cards_page_view.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/my_cards_header.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/transaction_history.dart';

class MyCards extends StatelessWidget {
  const MyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: BlocProvider(
        create: (context) => BankCardDotIndicatorCubit(),
        child: const Column(
          children: [
            MyCardsHeader(),
            CardsPageView(),
            DotsIndicator(),
            CustomDivider(),
            TransactionHistory(),
          ],
        ),
      ),
    );
  }
}
