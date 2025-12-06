import 'package:blue_event/features/auth/controller/create_new%20_password_controller.dart';
import 'package:blue_event/features/auth/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdatePasswordController extends GetxController{
  // LoginController loginController = Get.find();
  // SignupController signupController = Get.find();
  // CreateNewPasswordController createNewPasswordController = Get.find();

  TextEditingController currentPasswordController=TextEditingController();
  TextEditingController newPasswordController=TextEditingController();
  final formKey = GlobalKey<FormState>();
  RxBool isCurrentPasswordVisible = true.obs;
  RxBool isNewPasswordVisible = true.obs;
  RxBool isLoading = false.obs;
  RxList storedPasswordList = [
  LoginController().passwordController.text,
  //SignupController().passwordController.text,
  CreateNewPasswordController().confirmPasswordController.text
  ].obs;
  String? newPasswordvalidation(String? value) {
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

  String? currentPasswordValidation(String? value) {
    
    final text = (value ?? '').trim();
    if (text.isEmpty) {
      return "Password is required";
    }
    if (text != storedPasswordList.contains(text)) {
      return "Passwords do not match";
    }
    return null;
  }

  void updatePassword() {
    
    if (formKey.currentState!.validate()) {
      Get.snackbar('Success', 'Password Updated successfully');
    }else {
      Get.snackbar(
        'Error',
        'Please fix the errors',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
  }
  }

  void toggleCurrentPasswordVisibility() {
    isCurrentPasswordVisible.value = !isCurrentPasswordVisible.value;
  }

  void toggleNewPasswordVisibility() {
    isNewPasswordVisible.value = !isNewPasswordVisible.value;
  }
}