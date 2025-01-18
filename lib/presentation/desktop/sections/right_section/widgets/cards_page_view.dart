import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/bloc/bank_card_dot_indicator_cubit/bank_card_dot_indicator_cubit.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/bank_card.dart';

class CardsPageView extends StatelessWidget {
  const CardsPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      onPageChanged: (index) {
        context.read<BankCardDotIndicatorCubit>().setActiveValue(index);
      },
      children: const [
        BankCard(
            cardBgColor: Color(0xFF4DB7F2), cardType: CardType.visa, cardNumber: "240732189657245"),
        BankCard(cardBgColor: Colors.white, cardType: CardType.unionpay, cardNumber: "193578264821071"),
        BankCard(cardBgColor: Colors.teal, cardType: CardType.mastercard, cardNumber: "70983182937101"),
      ],
    );
  }
}
