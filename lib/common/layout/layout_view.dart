import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/layout/responsive_widget.dart';
import 'package:responsive_dashboard/presentation/desktop/desktop_dashboard.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/left_drawer/widgets/custom_dawer.dart';
import 'package:responsive_dashboard/presentation/mobile/mobile_dashboard.dart';
import 'package:responsive_dashboard/presentation/tablet/tablet_dashboard.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});
  static final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width > 700
          ? null
          : AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: IconButton(
                  icon: const Icon(Icons.list_rounded, color: Color(0xFF4EB7F2), size: 32),
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer(); // Open the drawer
                  })),
      drawer: const CustomDrawer(),
      backgroundColor: Colors.grey[50],
      body: ResponsiveWidget(
        mobileLayout: (context) => const MobileDashboard(),
        tabletLayout: (context) => const TabletDashboard(),
        desktopLayout: (context) => const DesktopDashboard(),
      ),
    );
  }
}
