import 'package:blue_event/features/auth/controller/signup_controller.dart';
import 'package:blue_event/shared/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPassField extends StatelessWidget {
  const SignupPassField({super.key});

  @override
  Widget build(BuildContext context) {
    SignupController controller = Get.find();
    return Obx(() {
      return CustomTextFromFiled(
        controller: controller.passwordController,
        validator: controller.passwordvalidation,
        focusNode: controller.passwordFocusNode,
        touched: controller.passwordTouched,
        hintText: "*************",
        obscureText: controller.isPasswordVisible.value,
        suffixIcon: IconButton(
          onPressed: () {
            controller.togglePasswordVisibility();
          },
          icon: Icon(
            controller.isPasswordVisible.value
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            color: Color(0xFFE1E1E1),
          ),
        ),
      );
    });
  }
}
