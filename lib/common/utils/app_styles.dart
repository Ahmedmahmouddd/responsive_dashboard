import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return const TextStyle(
      color: Color(0xFF064060),
      // fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return const TextStyle(
      color: Color(0xFF4EB7F2),
      // fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return const TextStyle(
      color: Color(0xFF064061),
      // fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return const TextStyle(
      color: Color(0xFFFFFFFF),
      // fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return const TextStyle(
      color: Color(0xFF064061),
      // fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return const TextStyle(
      color: Color(0xFF064061),
      // fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return const TextStyle(
      color: Color(0xFFAAAAAA),
      // fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return const TextStyle(
      color: Color(0xFF4EB7F2),
      // fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return const TextStyle(
      color: Color.fromARGB(255, 203, 203, 203),
      // fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return const TextStyle(
      color: Color(0xFFFFFFFF),
      // fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold22(BuildContext context) {
    return const TextStyle(
      color: Color(0xFFFFFFFF),
      // fontSize: getResponsiveFontSize(context, fontSize: 22),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
}
