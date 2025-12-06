import 'package:blue_event/features/auth/controller/signup_controller.dart';
import 'package:blue_event/shared/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmPassField extends StatelessWidget {
  const ConfirmPassField({super.key});

  @override
  Widget build(BuildContext context) {
    SignupController controller = Get.find();
    return Obx(() {
      return CustomTextFromFiled(
        hintText: "*************",
        controller: controller.confirmPasswordController,
        validator: controller.confirmPasswordValidation,
        focusNode: controller.confirmPasswordFocusNode,
        touched: controller.confirmPasswordTouched,
        obscureText: controller.isConfirmPasswordVisible.value,
        suffixIcon: IconButton(
          onPressed: () {
            controller.toggleConfirmPasswordVisibility();
          },
          icon: Icon(
            controller.isConfirmPasswordVisible.value
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            color: const Color(0xFFE1E1E1),
          ),
        ),
      );
    });
  }
}
