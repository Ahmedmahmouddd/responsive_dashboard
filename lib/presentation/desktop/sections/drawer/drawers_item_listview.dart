import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/common/utils/app_images.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/drawer/drawer_item.dart';

class DrawersItemListView extends StatefulWidget {
  const DrawersItemListView({super.key});

  @override
  State<DrawersItemListView> createState() => _DrawersItemListViewState();
}

class _DrawersItemListViewState extends State<DrawersItemListView> {
  final List<DrawerItemModel> itemModels = [
    DrawerItemModel(icon: SvgPicture.asset(Assets.Dashboard), title: "DashBoard"),
    DrawerItemModel(icon: SvgPicture.asset(Assets.MyTransctions), title: "My Transactions"),
    DrawerItemModel(icon: SvgPicture.asset(Assets.Statistics), title: "Statistics"),
    DrawerItemModel(icon: SvgPicture.asset(Assets.WalletAccount), title: "Wallet Account"),
    DrawerItemModel(icon: SvgPicture.asset(Assets.MyInvestments), title: "My Investment"),
  ];

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: itemModels.length,
      itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: DrawerItem(
            model: itemModels[index],
            isActive: activeIndex == index,
          )),
    );
  }
}
