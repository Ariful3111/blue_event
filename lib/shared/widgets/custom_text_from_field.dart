import 'package:blue_event/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFromFiled extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final Color? textColor;
  final Color? outlineborderColor;
  final Color? disabledBorder;
  final double? fontSize;
  final FontWeight? fontWeight;
  final BorderRadius? borderRadius;
  final TextEditingController? controller;
  final TextDirection? textDirection;
  final double? height;
  final double? width;
  final BorderRadius? radius;
  final Color? fillColor;
  final Color? focusBorderColor;
  final String? labelText;
  final String? errorText;
  final bool? isFilled;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;
  final AutovalidateMode? autovalidateMode;
  final FocusNode? focusNode;
  final RxBool? touched;
  final Color? enabledBorderColor;
  final bool ? readOnly; 

  const CustomTextFromFiled({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText,
    this.keyboardType,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.borderRadius,
    this.controller,
    this.textDirection,
    this.height,
    this.width,
    this.radius,
    this.fillColor,
    this.focusBorderColor,
    this.labelText,
    this.errorText,
    this.isFilled,
    this.validator,
    this.onChanged,
    this.autovalidateMode,
    this.focusNode,
    this.touched, this.outlineborderColor, this.disabledBorder, this.enabledBorderColor, this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textDirection: textDirection ?? TextDirection.ltr,
      obscureText: obscureText ?? false,
      keyboardType: keyboardType ?? TextInputType.text,
      validator: validator,
      onChanged: onChanged,
      focusNode: focusNode,
      readOnly: readOnly ?? false,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        errorText: errorText,
        filled: isFilled ?? true,
        fillColor: fillColor ?? AppColors.textFieldColor,
        hintStyle: GoogleFonts.poppins(
          color: textColor ?? AppColors.secondaryColorLight,
          fontSize: fontSize ?? 14,
          fontWeight: fontWeight ?? FontWeight.w300,
        ),
        
        border: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: outlineborderColor ?? Color(0xFFB2B2B2).withValues(alpha: 0.25),
          ),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16.r),
          borderSide:  BorderSide(
            color: enabledBorderColor ?? Color(0xFFB2B2B2).withValues(alpha: 0.25),
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: disabledBorder ?? Color(0xFFB2B2B2).withValues(alpha: 0.25),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color:
                focusBorderColor ?? Color(0XFF00ADEE).withValues(alpha: 0.25),
          ),
        ),
      ),
    );
  }
  
}
