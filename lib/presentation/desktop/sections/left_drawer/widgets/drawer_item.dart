import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.model, this.isActive = false});

  final bool isActive;
  final DrawerItemModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: model.icon,
      title: isActive
          ? Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                  fit: BoxFit.scaleDown, child: Text(model.title, style: AppStyles.styleBold16(context))))
          : Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                  fit: BoxFit.scaleDown, child: Text(model.title, style: AppStyles.styleSemiBold16(context))),
            ),
      trailing: isActive
          ? Container(
              width: 4,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color(0xFF4EB7F2)),
            )
          : null,
    );
  }
}

class DrawerItemModel {
  final String title;
  final Widget icon;

  DrawerItemModel({required this.title, required this.icon});
}
