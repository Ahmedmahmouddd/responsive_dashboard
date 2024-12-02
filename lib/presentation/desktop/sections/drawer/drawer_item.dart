import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.model, required this.isActive});
  final bool isActive;
  final DrawerItemModel model;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ListTile(
            leading: model.icon,
            title: Text(model.title, style: AppStyles.styleBold16(context)),
            trailing: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color(0xFF4EB7F2)),
              width: 4,
            ),
          )
        : ListTile(
            leading: model.icon,
            title: Text(model.title, style: AppStyles.styleSemiBold16(context)),
          );
  }
}

class DrawerItemModel {
  final String title;
  final Widget icon;

  DrawerItemModel({required this.title, required this.icon});
}
