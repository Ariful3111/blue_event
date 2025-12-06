
import 'package:blue_event/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class QuotationButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final double? elevation;
  final double height;
  final double width;
  final TextStyle ? textStyle;

  const QuotationButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.padding,
    this.borderRadius,
    this.elevation,
    required this.height,
    required this.width, this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color ?? AppColors.buttonColor,
          borderRadius: borderRadius ?? BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle?? GoogleFonts.roboto(
              color: textColor ?? Colors.white,
              fontSize: fontSize ?? 15.sp,
              fontWeight: fontWeight ?? FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
