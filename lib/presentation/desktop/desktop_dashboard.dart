import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/left_drawer/widgets/custom_dawer.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/middle_section.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/right_section/widgets/right_section.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 10),
        Expanded(
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(flex: 10, child: MiddleSection()),
                    SizedBox(width: 10),
                    Expanded(flex: 5, child: RightSection()),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
