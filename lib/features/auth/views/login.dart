import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/features/auth/controller/login_controller.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:blue_event/core/constants/images_path.dart';
import 'package:blue_event/features/auth/widgets/login_text_filled.dart';
import 'package:blue_event/shared/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.find();
    final fromKey = GlobalKey<FormState>();

    return Scaffold(
      body: Container(
        height: MediaQuery.heightOf(context),
        width: MediaQuery.widthOf(context),
        decoration: BoxDecoration(gradient: AppColors.authBackgroundColor),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5.h, left: 5.w, right: 5.w),
              child: Image.asset(ImagesPath.authLogo),
            ),
            SizedBox(height: 40.h),
            Container(
              height: MediaQuery.heightOf(context),
              width: MediaQuery.widthOf(context),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(58.r),
                  topRight: Radius.circular(58.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.secondaryColor.withValues(alpha: 0.25),
                    spreadRadius: 0,
                    blurRadius: 4.3.r,
                    offset: Offset(0, 9),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 76.h),
                  CustomText.primaryText(
                    title: "LogIn to your account",
                    fontSize: 27.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
                  SizedBox(height: 73.h),
                  LoginTextFilled(fromKey: fromKey),
                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.w),
                    child: controller.isLoading.value
                        ? const CircularProgressIndicator()
                        : CustomButtons(
                            text: "LOGIN",
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                              controller.login(fromKey);
                            },
                            height: 42.h,
                            width: 288.w,
                          ),
                  ),
                  SizedBox(height: 50.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: CustomText.upperTextfieldText(
                      title: "Don't have an account?",
                      color: AppColors.secondaryColorLight,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      spanColor: Color(0xFF1F3D7D),
                      spanFontSize: 16.sp,
                      spanFontWeight: FontWeight.w400,
                      spantext: " SIGN UP",
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        controller.signup(fromKey);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
