import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/features/auth/controller/create_new%20_password_controller.dart';
import 'package:blue_event/shared/widgets/custom_buttons.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:blue_event/shared/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CreatenewpasswordDialog extends StatelessWidget {
  const CreatenewpasswordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    CreateNewPasswordController createNewPasswordController = Get.find();
    return Obx(() {
      return Form(
        key: createNewPasswordController.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: AlertDialog(
          backgroundColor: Colors.white,
          scrollable: true,
          //constraints: BoxConstraints(maxHeight: 417.h, maxWidth: 351.w),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              Center(
                child: CustomText.secondaryText(
                  title: "Create a New Password",
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
              SizedBox(height: 10.h),
              CustomText.upperTextfieldText(
                title: "New Password",
                spantext: "*",
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 8.h),
              CustomTextFromFiled(
                hintText: "Enter new password",
                controller: createNewPasswordController.newPasswordController,
                validator: createNewPasswordController.passwordvalidation,
                obscureText:
                    createNewPasswordController.isPasswordVisible.value,
                suffixIcon: IconButton(
                  onPressed: () {
                    createNewPasswordController.togglePasswordVisibility();
                  },
                  icon: Icon(
                    createNewPasswordController.isPasswordVisible.value
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                ),
              ),

              SizedBox(height: 15.h),
              CustomText.upperTextfieldText(
                title: "Confirm Password",
                spantext: "*",
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 8.h),
              CustomTextFromFiled(
                hintText: "*************",
                controller:
                    createNewPasswordController.confirmPasswordController,
                validator:
                    createNewPasswordController.confirmPasswordValidation,
                obscureText:
                    createNewPasswordController.isConfirmPasswordVisible.value,
                suffixIcon: IconButton(
                  onPressed: () {
                    createNewPasswordController
                        .toggleConfirmPasswordVisibility();
                  },
                  icon: Icon(
                    createNewPasswordController.isConfirmPasswordVisible.value
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              CustomButtons(
                text: "Next",
                onPressed: () {
                  createNewPasswordController.createNewPassword(context);
                },
                height: 42.h,
                width: 288.h,
                borderRadius: BorderRadius.circular(10.r),
              ),
              SizedBox(height: 44.h),
            ],
          ),
        ),
      );
    });
  }
}
