import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/icons_path.dart';
import 'package:blue_event/shared/widgets/custom_buttons.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      backgroundColor: Colors.white,
      //constraints: BoxConstraints(maxHeight: 417.h, maxWidth: 351.w),
      content: Container(
        margin: const EdgeInsets.all(20.0).r,
        height: 380.h,
        width: MediaQuery.widthOf(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            //Image.asset("asstes/icons/alert_Succes.png"),
            Container(
              height: 63.h,
              width: 63.w,
              decoration: BoxDecoration(
                color: Color(0xFF66CB63),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Image.asset(IconsPath.okIcon, height: 33.h, width: 25.w),
            ),
            SizedBox(height: 12.h),
            CustomText.secondaryText(
              title: "Success",
              color: AppColors.primaryColor,
              fontSize: 24.sp,
            ),
            SizedBox(height: 5.h),
            CustomText.secondaryText(
              title: "Your password is succesfully\ncreated",
            ),
            SizedBox(height: 12.h),
            CustomButtons(
              height: 46.h,
              text: 'Continue',
              onPressed: () {
                Get.back();
              },
              width: 123.w,
            ),
          ],
        ),
      ),
    );
  }
}
