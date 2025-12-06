import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/features/auth/controller/forgot_password_controller.dart';
import 'package:blue_event/shared/widgets/custom_buttons.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:blue_event/shared/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgotpasswordDialog extends StatelessWidget {
  const ForgotpasswordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    ForgotPasswordController forgotPasswordController = Get.find();
    return Form(
      key: forgotPasswordController.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: AlertDialog(
        scrollable: true,
        backgroundColor: Colors.white,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 45.h),
            Center(
              child: CustomText.secondaryText(
                title: "Forgot Password",
                fontSize: 24.sp,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10.h),
            Center(
              child: CustomText.secondaryText(
                title: "Recover your account password",
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.primaryColorDark.withValues(alpha: 0.60),
              ),
            ),
            SizedBox(height: 40.h),
            CustomText.upperTextfieldText(
              title: "Email or Phone Number",
              spantext: "*",
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 8.h),
            CustomTextFromFiled(
              hintText: "enter email or phone number",
              controller: forgotPasswordController.emailandphoneController,
              validator: forgotPasswordController.emailnadphonevalidation,
            ),
            SizedBox(height: 60.h),
            CustomButtons(
              text: "Next",
              onPressed: () {
                forgotPasswordController.next(context);
              },
              height: 42.h,
              width: 288.h,
              borderRadius: BorderRadius.circular(10.r),
            ),
            SizedBox(height: 50.h),
          ],
        ),
      ),
    );
  }
}
