import 'package:blue_event/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeTextField {
  static primaryTextField({
    required String hintText,
    Widget? suffixIcon,
    Widget? prefixIcon,
    bool? obscureText,
    TextInputType? keyboardType,
    Color? textColor,
    Color? borderColor,
    double? fontSize,
    FontWeight? fontWeight,
    BorderRadius? borderRadius,
    TextEditingController? controller,
    TextDirection? textDirection,
    double? height,
    double? width,
    BorderRadius? radius,
    Color? containerColor,
    Color? focusBorderColor,
    ValueChanged<String>? onChanged,
    double ? gapPadding,

  }) {
    return Container(
      height: height ?? 53.h,
      width: width ?? 289.w,
      decoration: BoxDecoration(
        color: containerColor ?? Color(0xFFF8F8F8),
        borderRadius: radius ?? BorderRadius.circular(16.r),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        textDirection: textDirection ?? TextDirection.ltr,
        obscureText: obscureText ?? false,
        keyboardType: keyboardType ?? TextInputType.text,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(
            color: textColor ?? AppColors.secondaryColorLight,
            fontSize: fontSize ?? 14,
            fontWeight: fontWeight ?? FontWeight.w300,
          ),

          border: OutlineInputBorder(
            gapPadding: 1.0,
            borderRadius: borderRadius ?? BorderRadius.circular(16.r),
            borderSide: BorderSide(
              color: borderColor ?? Color(0XFFB2B2B2).withValues(alpha: 0.25),
            ),
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          
          disabledBorder: OutlineInputBorder( 
            borderSide: BorderSide(
              color: borderColor ?? Color(0XFFB2B2B2).withValues(alpha: 0.25),
              width: 0.5
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16.r),
            gapPadding: gapPadding??0,
            borderSide: BorderSide(
              color:
                  focusBorderColor ?? Color(0XFF00ADEE).withValues(alpha: 0.25),
            ),
          ),
          
        ),
      ),
    );
  }
}