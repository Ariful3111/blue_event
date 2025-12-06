import 'package:blue_event/core/constants/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText {
  static Widget primaryText({
    required String title,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    int? maxLines,
  }) {
    return Text(
      title,
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.center,
      style: GoogleFonts.poppins(
        color: color ?? AppColors.primaryColorDark,
        fontSize: fontSize ?? 14.sp,
        fontWeight: fontWeight ?? FontWeight.w500,
      ),
    );
  }

  static Widget secondaryText({
    required String title,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return Text(
      title,
      textAlign: textAlign ?? TextAlign.center,
      style: GoogleFonts.inter(
        color: color ?? AppColors.secondaryColorLight,
        fontSize: fontSize ?? 14.sp,
        fontWeight: fontWeight ?? FontWeight.w500,
      ),
    );
  }

  static Widget splashText({
    required String title,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return Text(
      title,
      style: GoogleFonts.ntr(
        color: color ?? AppColors.primaryColorDark,
        fontSize: fontSize ?? 12.sp,
        fontWeight: fontWeight ?? FontWeight.w400,
      ),
    );
  }

  static Widget upperTextfieldText({
    required String title,
    required String? spantext,
    Color? color,
    Color? spanColor,
    double? fontSize,
    double? spanFontSize,
    FontWeight? fontWeight,
    FontWeight? spanFontWeight,
    VoidCallback? onTap,
    double? leftPadding,
    double? rightPadding,
    double? topPadding,
    double? bottomPadding,
    TextStyle? textStyle,
  }) {
    return Padding(
      padding: EdgeInsetsGeometry.only(
        left: leftPadding ?? 10,
        right: rightPadding ?? 0,
        top: topPadding ?? 0,
        bottom: bottomPadding ?? 0,
      ),
      child: RichText(
        text: TextSpan(
          text: title,
          style: GoogleFonts.poppins(
            color: color ?? AppColors.primaryColorDark,
            fontSize: fontSize ?? 14.sp,
            fontWeight: fontWeight ?? FontWeight.w400,
          ),
          children: [
            TextSpan(
              text: spantext,
              recognizer: TapGestureRecognizer()..onTap = onTap,
              style:
                  textStyle ??
                  GoogleFonts.poppins(
                    color: spanColor ?? Color(0xFFF40F6F),
                    fontSize: spanFontSize ?? 14.sp,
                    fontWeight: spanFontWeight ?? FontWeight.w500,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget descriptionText({
    required String title,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    int? maxLines,
    //double ? lineHeight,
  }) {
    return Text(
      title,
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.center,
      style: GoogleFonts.poppins(
        color: color ?? AppColors.primaryColorDark,
        fontSize: fontSize ?? 14.sp,
        fontWeight: fontWeight ?? FontWeight.w500,
        height: 1.5.h,
      ),
    );
  }

  static titleText({
    required String title,
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    TextAlign? textAlign,
  }) {
    return Text(
      title,
      style: GoogleFonts.kanit(
        fontSize: fontSize ?? 20.sp,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.primaryColor,
      ),
    );
  }

  static Widget robotoText({
    required String title,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    int? maxLines,
  }) {
    return Text(
      title,
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.left,
      style: GoogleFonts.roboto(
        color: color ?? Color(0xFF797979),
        fontSize: fontSize ?? 12.sp,
        fontWeight: fontWeight ?? FontWeight.w400,
      ),
    );
  }

  static Widget jostText({
    required String title,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    int? maxLines,
  }) {
    return Text(
      title,
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.left,
      style: GoogleFonts.jost(
        color: color ?? Color(0xFF66707A),
        fontSize: fontSize ?? 14.sp,
        fontWeight: fontWeight ?? FontWeight.w400,
      ),
    );
  }
}
