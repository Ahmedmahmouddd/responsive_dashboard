import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/layout/responsive_widget.dart';
import 'package:responsive_dashboard/presentation/desktop/desktop_dashboard.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: ResponsiveWidget(
        mobileLayout: (context) => const Text("Mobile Layout"),
        tabletLayout: (context) => const Text("Tablet Layout"),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
