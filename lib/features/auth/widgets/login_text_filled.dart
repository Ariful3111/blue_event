import 'package:blue_event/features/auth/controller/login_controller.dart';
import 'package:blue_event/features/auth/widgets/forgotpassword_dialog.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:blue_event/shared/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginTextFilled extends StatelessWidget {
  final GlobalKey<FormState>? fromKey;
  const LoginTextFilled({super.key, this.fromKey});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find();
    //final ForgotPasswordController forgotPasswordController = Get.find();
    //final CreateNewPasswordController createNewPasswordController = Get.find();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.w),
      child: Form(
        key: fromKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText.upperTextfieldText(
              spantext: "*",
              title: "Email or Phone Number",
            ),
            SizedBox(height: 7.h),
            CustomTextFromFiled(
              hintText: "enter email or phone number",
              validator: controller.emailvalidation,
              focusNode: controller.emailFocusNode,
              touched: controller.emailTouched,
              // errorText: controller.emailerror.value.isEmpty
              //     ? null
              //     : controller.emailerror.value,
              controller: controller.emailController,
              textColor: Color(0xFF757171),
              keyboardType: TextInputType.emailAddress,
            ),

            SizedBox(height: 25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText.upperTextfieldText(spantext: "*", title: "Password"),

                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return ForgotpasswordDialog();
                      },
                    );
                    controller.passwordController.clear();
                    controller.emailController.clear();
                  },
                  child: CustomText.secondaryText(
                    title: "Forgot Password?",
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF166FBA),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Obx(() {
              return CustomTextFromFiled(
                hintText: "*************",

                keyboardType: TextInputType.visiblePassword,
                controller: controller.passwordController,
                validator: controller.passwordvalidation,
                textColor: Color(0xFF757171),
                obscureText: controller.isPasswordVisible.value,
                focusNode: controller.passwordFocusNode,
                touched: controller.passwordTouched,
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.togglePasswordVisibility();
                  },
                  icon: Icon(
                    controller.isPasswordVisible.value
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    size: 20.h.w,
                    color: Color(0xFFE1E1E1),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
