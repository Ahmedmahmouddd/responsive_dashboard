import 'package:flutter/material.dart';
import 'package:responsive_dashboard/common/utils/app_styles.dart';
import 'package:responsive_dashboard/presentation/desktop/sections/middle_section/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.text, required this.hint});

  final String text;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(text, style: AppStyles.styleMedium16(context)),
        ),
        const SizedBox(height: 8),
        CustomTextField(text: hint),
      ],
    );
  }
}
