import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  RxBool isPasswordVisible = true.obs;
  RxBool isLoading = false.obs;

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  final emailTouched = false.obs;
  final passwordTouched = false.obs;

  @override
  void onInit() {
    super.onInit();
    emailFocusNode.addListener(() {
      if (emailFocusNode.hasFocus) {
        emailTouched.value = true;
      }
    });
    passwordFocusNode.addListener(() {
      if (passwordFocusNode.hasFocus) {
        passwordTouched.value = true;
      }
    });
  }

  String? emailvalidation(String? value) {
    final text = (value ?? '').trim();
    if (text.isEmpty) {
      return "Email or Phone number is required";
    }
    final RegExp phoneReg = RegExp(r'^(?:\+?88)?01[3-9]\d{8}$');
    final RegExp emailReg = RegExp(r'^[\w.+-]+@[\w-]+\.[\w.-]+$');
    if (phoneReg.hasMatch(text) || emailReg.hasMatch(text)) {
      return null;
    }
    {
      return "Enter a valid email address or phone number";
    }
  }

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
    if (!RegExp(r'[!@#$%^&~*\/-_=]').hasMatch(text)) {
      return 'Must contain at least one special character(!@#%^&~*/)';
    }
    return null;
  }

  void login(GlobalKey<FormState> formKey) {
    emailvalidation(emailController.text.trim());
    passwordvalidation(passwordController.text.trim());
    if (formKey.currentState?.validate() ?? false) {
      isLoading.value = true;
      Future.delayed(const Duration(seconds: 2), () {
        isLoading.value = false;
        Get.offAllNamed(AppRoutes.mainHome);
        Get.snackbar(
          'Success',
          'Login Successful',
          snackPosition: SnackPosition.BOTTOM,

          colorText: AppColors.primaryColorDark,
        );
      });
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

  void signup(fromKey) {
    emailController.clear();
    passwordController.clear();
    fromKey.currentState?.reset();
    Get.toNamed(AppRoutes.signup);
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.onClose();
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}
