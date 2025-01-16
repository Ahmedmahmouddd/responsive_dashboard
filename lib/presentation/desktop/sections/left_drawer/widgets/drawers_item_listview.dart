import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/common/utils/app_images.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/left_drawer/bloc/drawer_cubit/drawer_cubit.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/left_drawer/widgets/drawer_item.dart';

class DrawersItemListView extends StatelessWidget {
  const DrawersItemListView({super.key});

  static List<DrawerItemModel> items = [
    DrawerItemModel(icon: SvgPicture.asset(Assets.Dashboard), title: "DashBoard"),
    DrawerItemModel(icon: SvgPicture.asset(Assets.MyTransctions), title: "My Transactions"),
    DrawerItemModel(icon: SvgPicture.asset(Assets.Statistics), title: "Statistics"),
    DrawerItemModel(icon: SvgPicture.asset(Assets.WalletAccount), title: "Wallet Account"),
    DrawerItemModel(icon: SvgPicture.asset(Assets.MyInvestments), title: "My Investment"),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DrawerCubit(),
      child: BlocBuilder<DrawerCubit, int>(
        builder: (context, activeIndex) {
          return SliverList.builder(
            itemCount: items.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                if (activeIndex != index) {
                  context.read<DrawerCubit>().setActiveIndex(index);
                }
              },
              child: DrawerItem(
                model: items[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
