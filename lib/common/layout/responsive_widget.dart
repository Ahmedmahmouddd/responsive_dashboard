import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/size_config.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget(
      {super.key, required this.mobileLayout, required this.tabletLayout, required this.desktopLayout});

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= SizeConfig.tablet) {
        return mobileLayout(context);
      } else if (constraints.maxWidth <= SizeConfig.desktop) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
