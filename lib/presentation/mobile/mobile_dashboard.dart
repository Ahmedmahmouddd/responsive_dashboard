import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/middle_section.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/right_section.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          MiddleSection(),
          RightSection(),
        ],
      ),
    );
  }
}
