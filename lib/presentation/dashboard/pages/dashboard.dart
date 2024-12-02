import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/dashboard/widgets/dashbord_adaptive_layout.dart';
import 'package:responsive_dashboard/presentation/desktop/dashboard_desktop_layout.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return DashbordAdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashboardDesktopLayout());
  }
}
