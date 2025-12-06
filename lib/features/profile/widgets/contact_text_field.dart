import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/shared/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactTextField extends StatelessWidget {
  const ContactTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFromFiled(hintText: "Your Name"),
        SizedBox(height: 15.h),
        CustomTextFromFiled(hintText: "Your Email"),
        SizedBox(height: 15.h),
        TextFormField(
          maxLines: 5,
          decoration: InputDecoration(
            hintText: "Subject",

            hintTextDirection: TextDirection.ltr,
            hintStyle: GoogleFonts.poppins(
              color: AppColors.secondaryColorLight,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
            fillColor: AppColors.textFieldColor,
            filled: true,

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: Color(0xFFB2B2B2).withValues(alpha: 0.25),
              ),
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: Color(0xFFB2B2B2).withValues(alpha: 0.25),
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFB2B2B2).withValues(alpha: 0.25),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: Color(0XFF00ADEE).withValues(alpha: 0.25),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
