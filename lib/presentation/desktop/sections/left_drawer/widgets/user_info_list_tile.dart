import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/common/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.leading, required this.title, required this.subtitle});

  final String title, subtitle, leading;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[50],
      elevation: 0,
      child: Center(
        child: ListTile(
            leading: SvgPicture.asset(leading),
            title: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                  fit: BoxFit.scaleDown, child: Text(title, style: AppStyles.styleSemiBold16(context))),
            ),
            subtitle: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                  fit: BoxFit.scaleDown, child: Text(subtitle, style: AppStyles.styleRegular12(context))),
            )),
      ),
    );
  }
}
