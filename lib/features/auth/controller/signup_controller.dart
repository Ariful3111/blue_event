import 'package:blue_event/core/routes/app_routes.dart';
import 'package:blue_event/features/auth/repositories/register_repo.dart';
import 'package:blue_event/features/auth/widgets/otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final RegisterRepository registerRepository;
  SignupController({required this.registerRepository});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  RxBool isPasswordVisible = true.obs;
  RxBool isConfirmPasswordVisible = true.obs;
  RxBool acceptTerms = false.obs;
  RxBool isLoading = false.obs;

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode confirmPasswordFocusNode = FocusNode();
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();

  final emailTouched = false.obs;
  final passwordTouched = false.obs;
  final confirmPasswordTouched = false.obs;
  final nameTouched = false.obs;
  final phoneTouched = false.obs;

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
    confirmPasswordFocusNode.addListener(() {
      if (confirmPasswordFocusNode.hasFocus) {
        confirmPasswordTouched.value = true;
      }
    });
    nameFocusNode.addListener(() {
      if (nameFocusNode.hasFocus) {
        nameTouched.value = true;
      }
    });
    phoneFocusNode.addListener(() {
      if (phoneFocusNode.hasFocus) {
        phoneTouched.value = true;
      }
    });
  }

  String? emailvalidation(String? value) {
    final text = (value ?? '').trim();
    if (text.isEmpty) {
      return "Email is required";
    }
    final RegExp emailReg = RegExp(r'^[\w.+-]+@[\w-]+\.[\w.-]+$');
    if (emailReg.hasMatch(text)) {
      return null;
    }
    {
      return "Enter a valid email address";
    }
  }

  String? phoneValidation(String? value) {
    final text = (value ?? '').trim();
    if (text.isEmpty) {
      return "Phone number is required";
    }
    final RegExp phoneReg = RegExp(r'^(?:\+?88)?01[3-9]\d{8}$');
    if (phoneReg.hasMatch(text)) {
      return null;
    }
    return "Enter a valid phone number";
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
    if (text != passwordController.text) {
      return "Passwords do not match";
    }
    return null;
  }

  String? nameValidation(String? value) {
    final text = (value ?? '').trim();
    if (text.isEmpty) {
      return "Name is required";
    }
    if (text.length < 3) {
      return "Name must be at least 3 characters";
    }
    return null;
  }

  void signup(GlobalKey<FormState> fromKey, BuildContext context) async {
    nameValidation(nameController.text);
    emailvalidation(emailController.text.trim());
    phoneValidation(phoneController.text.trim());
    passwordvalidation(passwordController.text.trim());
    confirmPasswordValidation(confirmPasswordController.text.trim());
    if (!acceptTerms.value) {
      Get.snackbar(
        'Error',
        'Please accept the Terms and Conditions before signing up.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }
    if (fromKey.currentState?.validate() ?? false) {
      // final response = await registerRepository.execute(
      //   name: nameController.text,
      //   email: emailController.text.trim(),
      //   password: passwordController.text.trim(),
      //   confirmPassword: confirmPasswordController.text.trim(),
      //   phone: phoneController.text.trim(),
      // );
      Get.snackbar(
        'Success',
        "OTP Send In Your Number",
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
      );
      showDialog(
        context: context,
        builder: (context) {
          return Otp();
        },
      );
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

  void toggleAcceptTerms(bool? value) {
    acceptTerms.value = value ?? true;
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;
  }

  void login(fromKey) {
    confirmPasswordController.clear();
    emailController.clear();
    passwordController.clear();
    nameController.clear();
    phoneController.clear();
    fromKey.currentState?.reset();
    Get.toNamed(AppRoutes.login);
  }

  @override
  void onClose() {
    emailController.dispose();
    nameController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
    nameFocusNode.dispose();
    phoneFocusNode.dispose();
    super.onClose();
  }
}
