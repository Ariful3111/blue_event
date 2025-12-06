import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/features/auth/controller/signup_controller.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCheckBox extends StatelessWidget {
  const MyCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    SignupController signupController = Get.find();
    return Obx(() {
      return Row(
        children: [
          Checkbox(
            value: signupController.acceptTerms.value,
            onChanged: signupController.toggleAcceptTerms,
            activeColor: AppColors.primaryColor,
          ),

          CustomText.upperTextfieldText(
            title: "I understood the",
            spantext: " terms & policy.",
            spanColor: AppColors.primaryColor,
          ),
        ],
      );
    });
  }
}
