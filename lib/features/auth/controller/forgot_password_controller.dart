import 'package:blue_event/features/auth/widgets/create_new_password_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  final TextEditingController emailandphoneController = TextEditingController();
  RxBool isLoading = false.obs;
  final formKey = GlobalKey<FormState>();

  String? emailnadphonevalidation(String? value) {
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

  void next(BuildContext context) {
    if (formKey.currentState?.validate() ?? false) {
      isLoading.value = true;
      Future.delayed(const Duration(seconds: 2), () {
        isLoading.value = false;
        Get.snackbar(
          'Success',
          'Link Send',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        showDialog(
          context: context,
          builder: (context) {
            return CreatenewpasswordDialog();
          },
        );

        Get.back();
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
}
