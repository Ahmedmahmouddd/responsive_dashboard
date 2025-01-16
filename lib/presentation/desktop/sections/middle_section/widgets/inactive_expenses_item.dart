import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/app_styles.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/all_expenses_item.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/all_expenses_item_header.dart';

class InActiveExpensessItem extends StatelessWidget {
  const InActiveExpensessItem({super.key, required this.itemModel,required this.onTap});

  final ExpensesItemModel itemModel;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              image: itemModel.image,
            ),
            const SizedBox(
              height: 34,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.title,
                style: AppStyles.styleMedium16(context),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.date,
                style: AppStyles.styleRegular14(context),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.price,
                style: AppStyles.styleSemiBold24(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
