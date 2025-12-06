import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/features/profile/controller/update_password_controller.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:blue_event/shared/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdatepasswordDialog extends StatelessWidget {
  const UpdatepasswordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    UpdatePasswordController updatePasswordController = Get.find();
    return Obx(() {
      return Form(
        key: updatePasswordController.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: AlertDialog(
          backgroundColor: Colors.white,
          scrollable: true,
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              CustomText.upperTextfieldText(
                title: "Current Password",
                spantext: "*",
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 8.h),
              CustomTextFromFiled(
                hintText: "*************",
                controller: updatePasswordController.currentPasswordController,
                validator: updatePasswordController.currentPasswordValidation,
                obscureText:
                    updatePasswordController.isCurrentPasswordVisible.value,
                suffixIcon: IconButton(
                  onPressed: () {
                    updatePasswordController.toggleCurrentPasswordVisibility();
                  },
                  icon: Icon(
                    updatePasswordController.isCurrentPasswordVisible.value
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
              SizedBox(height: 15.h),
              CustomTextFromFiled(
                hintText: "*************",
                controller: updatePasswordController.newPasswordController,
                validator: updatePasswordController.newPasswordvalidation,
                obscureText:
                    updatePasswordController.isNewPasswordVisible.value,
                suffixIcon: IconButton(
                  onPressed: () {
                    updatePasswordController.toggleNewPasswordVisibility();
                  },
                  icon: Icon(
                    updatePasswordController.isNewPasswordVisible.value
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              InkWell(
                onTap: () {
                  updatePasswordController.updatePassword();
                },
                child: Container(
                  height: 42.h,
                  width: MediaQuery.widthOf(context),
                  decoration: BoxDecoration(
                    color: AppColors.buttonColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text(
                      "Update Password",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      );
    });
  }
}
