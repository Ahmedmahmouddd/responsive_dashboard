import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.grey,
      maxLines: 1,
      cursorWidth: 2,
      style: AppStyles.styleMedium16(context).copyWith(color: Colors.grey),
      decoration: InputDecoration(
        filled: true,
        contentPadding: const EdgeInsets.all(24),
        hintText: text,
        hintStyle: AppStyles.styleMedium16(context).copyWith(color: Colors.grey),
        fillColor: Colors.grey[50],
        border: const OutlineInputBorder(
            borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
    );
  }
}
