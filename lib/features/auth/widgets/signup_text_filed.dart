import 'package:blue_event/features/auth/controller/signup_controller.dart';
import 'package:blue_event/features/auth/widgets/confirm_pass_field.dart';
import 'package:blue_event/features/auth/widgets/signup_pass_field.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:blue_event/shared/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignupTextFiled extends StatelessWidget {
  final GlobalKey<FormState>? fromKey;

  const SignupTextFiled({super.key, this.fromKey});

  @override
  Widget build(BuildContext context) {
    final SignupController controller = Get.find();
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 50.w),
      child: Form(
        key: fromKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText.upperTextfieldText(
              spantext: "*",
              title: "Name",
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 8.h),
            CustomTextFromFiled(
              controller: controller.nameController,
              validator: controller.nameValidation,
              focusNode: controller.nameFocusNode,
              touched: controller.nameTouched,
              hintText: "ex.jon smith",
            ),
            SizedBox(height: 8.h),
            CustomText.upperTextfieldText(
              spantext: "*",
              title: "Email",
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 8.h),
            CustomTextFromFiled(
              controller: controller.emailController,
              validator: controller.emailvalidation,
              focusNode: controller.emailFocusNode,
              touched: controller.emailTouched,
              keyboardType: TextInputType.emailAddress,
              hintText: "ex.jon.smith@email.com",
            ),
            SizedBox(height: 8.h),
            CustomText.upperTextfieldText(
              spantext: "*",
              title: "Phone Number",
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 8.h),
            CustomTextFromFiled(
              controller: controller.phoneController,
              validator: controller.phoneValidation,
              focusNode: controller.phoneFocusNode,
              touched: controller.phoneTouched,
              keyboardType: TextInputType.phone,
              hintText: "01776*********",
            ),
            SizedBox(height: 8.h),
            CustomText.upperTextfieldText(
              spantext: "*",
              title: "Password",
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 8.h),
            SignupPassField(),
            SizedBox(height: 8.h),
            CustomText.upperTextfieldText(
              spantext: "*",
              title: "Confirm Password",
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 8.h),
            ConfirmPassField(),
          ],
        ),
      ),
    );
  }
}
