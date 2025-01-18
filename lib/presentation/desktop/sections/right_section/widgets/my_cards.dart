import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/custom_dividor.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/cards_page_view.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/my_cards_header.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/transaction_history.dart';

class MyCards extends StatelessWidget {
  const MyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          MyCardsHeader(),
          CardsPageView(),
          DotsIndicator(),
          CustomDivider(),
          TransactionHistory()
        ],
      ),
    );
  }
}
