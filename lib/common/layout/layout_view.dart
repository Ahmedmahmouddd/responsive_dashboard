import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/layout/responsive_widget.dart';
import 'package:responsive_dashboard/common/utils/size_config.dart';
import 'package:responsive_dashboard/presentation/desktop/desktop_dashboard.dart';
import 'package:responsive_dashboard/presentation/mobile/mobile_dashboard.dart';
import 'package:responsive_dashboard/presentation/mobile/widgets/appbar_with_drawer.dart';
import 'package:responsive_dashboard/presentation/mobile/widgets/custom_drawer_clearing_notch.dart';
import 'package:responsive_dashboard/presentation/tablet/tablet_dashboard.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});
  static final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: scaffoldKey,
      appBar: width > SizeConfig.tablet ? null : AppBarWithDrawer(scaffoldKey: scaffoldKey),
      drawer: MediaQuery.sizeOf(context).width > SizeConfig.tablet ? null : const CustomDrawerClearingNotch(),
      backgroundColor: Colors.grey[50],
      body: ResponsiveWidget(
        mobileLayout: (context) => const MobileDashboard(),
        tabletLayout: (context) => const TabletDashboard(),
        desktopLayout: (context) => const DesktopDashboard(),
      ),
    );
  }
}
