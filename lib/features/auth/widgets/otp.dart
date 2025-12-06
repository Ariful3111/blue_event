import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/routes/app_routes.dart';
import 'package:blue_event/shared/widgets/custom_buttons.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      backgroundColor: Colors.white,

      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.h),
          Center(
            child: CustomText.secondaryText(
              title: "OTP Verification",
              color: AppColors.primaryColor,
              fontSize: 24.sp,
            ),
          ),
          SizedBox(height: 38.h),
          CustomText.secondaryText(
            title:
                "Enter the 5-digit verification code sent to your mobile number (+880xxx32325).",
            fontSize: 12.sp,
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 16.h),
          CustomText.upperTextfieldText(
            title: "Verification Code",
            spantext: "*",
          ),
          SizedBox(height: 17.h),
          OtpTextField(
            numberOfFields: 5,
            borderColor: Colors.white,
            showFieldAsBox: true,
            fieldHeight: 45.h,
            fieldWidth: 45.w,
            borderRadius: BorderRadius.circular(8).r,
            clearText: true,
            borderWidth: 1.r,
            enabledBorderColor: Color(0xFF979797),
            focusedBorderColor: Color(0xFF7CD3F6),
            cursorColor: AppColors.primaryColorDark,
            showCursor: false,
            keyboardType: TextInputType.number,
            disabledBorderColor: Color(0xFF7CD3F6),
            textStyle: GoogleFonts.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFF7CD3F6),
            ),
          ),
          SizedBox(height: 17.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {},
                child: CustomText.secondaryText(
                  title: "Resend OTP?",
                  fontSize: 13.sp,
                  color: Color(0xFF3B3E99),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 17.h),
          CustomButtons(
            text: "Verify Code",
            onPressed: () {
              Get.offAllNamed(AppRoutes.mainHome);
            },
            height: 42.h,
            width: 288.h,
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
