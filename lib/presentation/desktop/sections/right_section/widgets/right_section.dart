import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/income_section.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/my_cards.dart';

class RightSection extends StatelessWidget {
  const RightSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCards(),
        IncomeSection(),
        SizedBox(height: 12),
      ],
    );
  }
}
