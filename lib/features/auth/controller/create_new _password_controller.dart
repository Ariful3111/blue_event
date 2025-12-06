import 'package:blue_event/features/auth/widgets/success_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateNewPasswordController extends GetxController {
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  RxBool isPasswordVisible = true.obs;
  RxBool isConfirmPasswordVisible = true.obs;
  RxBool isLoading = false.obs;

  String? passwordvalidation(String? value) {
    final text = (value ?? '').trim();

    if (text.isEmpty) {
      return "Password is required";
    }
    if (text.length < 8) {
      return "Password must be at least 8 characters";
    }
    if (!RegExp(r'[0-9]').hasMatch(text)) {
      return "Must contain at least one number";
    }
    if (!RegExp(r'[A-Z]').hasMatch(text)) {
      return "Must contain at least one uppercase letter";
    }
    if (!RegExp(r'[a-z]').hasMatch(text)) {
      return "Must contain at least one lowercase letter";
    }
    if (!RegExp(r'[!@#$%^&~*\/]').hasMatch(text)) {
      return 'Must contain at least one special character(!@#%^&~*/)';
    }
    return null;
  }

  String? confirmPasswordValidation(String? value) {
    final text = (value ?? '').trim();
    if (text.isEmpty) {
      return "Confirm Password is required";
    }
    if (text != newPasswordController.text) {
      return "Passwords do not match";
    }
    return null;
  }

  void createNewPassword(BuildContext context) {
    if (formKey.currentState!.validate()) {
      Get.snackbar('Success', 'Password created successfully');
      showDialog(
        context: context,
        builder: (context) {
          return SuccessDialog();
        },
      );
      Get.back();
    } else {
      Get.snackbar(
        'Error',
        'Please fix the errors',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;
  }
}
