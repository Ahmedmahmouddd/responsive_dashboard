import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/app_styles.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/all_expenses_item.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/all_expenses_item_header.dart';

class ActiveExpensessItem extends StatelessWidget {
  const ActiveExpensessItem({super.key, required this.itemModel, required this.onTap});

  final ExpensesItemModel itemModel;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: ShapeDecoration(
          color: const Color(0xFF4DB7F2),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFF4DB7F2)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              imageBackground: Colors.white.withOpacity(0.1),
              imageColor: Colors.white,
              image: itemModel.image,
            ),
            const SizedBox( 
              height: 34,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.title,
                style: AppStyles.styleMedium16(context).copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.date,
                style: AppStyles.styleRegular14(context).copyWith(
                  color: const Color(0xFFFAFAFA),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.price,
                style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
