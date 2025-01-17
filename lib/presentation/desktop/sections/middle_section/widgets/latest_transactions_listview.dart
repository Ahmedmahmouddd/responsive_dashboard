import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/app_images.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/left_drawer/widgets/user_info_list_tile.dart';

class LatestTransactionsListview extends StatelessWidget {
  const LatestTransactionsListview({super.key});

  static const List items = [
    UserInfoListTile(leading: Assets.Avatar1, title: 'John Decloud Doe', subtitle: 'JD12@gmail.com'),
    UserInfoListTile(leading: Assets.Avatar2, title: 'Doe John Decloud', subtitle: 'DJ1174@gmail.com'),
    UserInfoListTile(leading: Assets.Avatar3, title: 'John Cena Youd', subtitle: 'JC226@gmail.com'),
    UserInfoListTile(leading: Assets.Avatar3, title: 'Cena Tarrel John', subtitle: 'CJ21@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(children: items.map((e) => IntrinsicWidth(child: e)).toList()),
      ),
    );
  }
}
