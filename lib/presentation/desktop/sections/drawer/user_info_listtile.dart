import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.leading, required this.title, required this.subtitle});

  final Widget leading;
  final String title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[50],
      elevation: 0,
      child: ListTile(
          leading: leading,
          title: Text(title, style: AppStyles.styleSemiBold16(context)),
          subtitle: Text(subtitle, style: AppStyles.styleRegular12(context))),
    );
  }
}
