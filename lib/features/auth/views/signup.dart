import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/images_path.dart';
import 'package:blue_event/features/auth/controller/signup_controller.dart';
import 'package:blue_event/features/auth/widgets/my_check_box.dart';
import 'package:blue_event/features/auth/widgets/signup_text_filed.dart';
import 'package:blue_event/shared/widgets/custom_buttons.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});
  @override
  Widget build(BuildContext context) {
    final SignupController controller = Get.find();
    final fromKey = GlobalKey<FormState>();

    return Scaffold(
      body: Container(
        height: MediaQuery.heightOf(context),
        width: double.infinity,
        decoration: BoxDecoration(gradient: AppColors.authBackgroundColor),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8).r,
              child: Image.asset(
                ImagesPath.authLogo,
                height: 176.h,
                width: MediaQuery.widthOf(context),
              ),
            ),

            Container(
              height: MediaQuery.heightOf(context),
              width: double.infinity,
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
                  SizedBox(height: 20.h),
                  CustomText.primaryText(
                    title: "Create your account",
                    color: AppColors.primaryColor,
                    fontSize: 27.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 10.h),
                  SignupTextFiled(fromKey: fromKey),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.w),
                    child: Column(
                      children: [
                        MyCheckBox(),
                        controller.isLoading.value
                            ? const CircularProgressIndicator()
                            : CustomButtons(
                                height: 42.h,
                                width: 288.w,
                                text: 'SIGN UP',
                                onPressed: () {
                                  FocusScope.of(context).unfocus();
                                  controller.signup(fromKey, context);
                                },
                              ),
                        SizedBox(height: 5.h),
                        CustomText.upperTextfieldText(
                          title: "Have an account?",
                          color: Color(0xFF888888),
                          spanColor: Color(0xFF1F3D7D),
                          spantext: " LOGIN",
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            controller.login(fromKey);
                          },
                        ),
                      ],
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
