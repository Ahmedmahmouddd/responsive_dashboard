import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/app_styles.dart';

class MyCardsHeader extends StatelessWidget {
  const MyCardsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, right: 12, left: 12),
      child: Row(
        children: [
          Text("My Cards", style: AppStyles.styleSemiBold20(context)),
        ],
      ),
    );
  }
}
