import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/common/utils/app_images.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/left_drawer/widgets/drawer_item.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/left_drawer/widgets/drawers_item_listview.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/left_drawer/widgets/user_info_list_tile.dart';

class CustomDrawerClearingNotch extends StatelessWidget {
  const CustomDrawerClearingNotch({super.key});

  @override
  Widget build(BuildContext context) {
    final notchPadding = MediaQuery.of(context).padding.top;
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(height: notchPadding, color: Colors.white),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 4.0, left: 4, right: 4, bottom: 4),
              child: UserInfoListTile(leading: Assets.Avatar1, title: 'John Doe', subtitle: 'JD@gmail.com'),
            ),
          ),
          const DrawersItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox()),
                DrawerItem(model: DrawerItemModel(title: 'Setting', icon: SvgPicture.asset(Assets.Settings))),
                DrawerItem(model: DrawerItemModel(title: 'Logout', icon: SvgPicture.asset(Assets.Logout))),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
