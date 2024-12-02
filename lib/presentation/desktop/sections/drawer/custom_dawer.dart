import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/common/utils/app_images.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/drawer/drawer_item.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/drawer/drawers_item_listview.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/drawer/user_info_listtile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              leading: SvgPicture.asset(Assets.Avatar1),
              title: 'John Doe',
              subtitle: 'johndoe@gmail.com',
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
          const DrawersItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox()),
                DrawerItem(
                    model: DrawerItemModel(title: 'Setting', icon: SvgPicture.asset(Assets.Settings)),
                    isActive: false),
                DrawerItem(
                    model: DrawerItemModel(title: 'Logout', icon: SvgPicture.asset(Assets.Logout)),
                    isActive: false),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
