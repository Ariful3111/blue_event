import 'dart:io';
import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/icons_path.dart';
import 'package:blue_event/core/constants/images_path.dart';
import 'package:blue_event/features/profile/controller/profile_edit_controller.dart';
import 'package:blue_event/shared/widgets/custom_buttons.dart';
import 'package:blue_event/shared/widgets/custom_container.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:blue_event/shared/widgets/custom_text_from_field.dart';
import 'package:blue_event/shared/widgets/custom_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileEditController profileEditController = Get.find();
    return Scaffold(
      body: SingleChildScrollView(
        child: CustomContainer(
          widget: Stack(
            children: [
              Positioned(
                top: 50.h,
                child: CustomTop(title: "Profile"),
              ),
              Positioned(
                top: 161.h,
                child: Container(
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
                        color: AppColors.primaryColorDark,
                        spreadRadius: 0,
                        blurRadius: 4.3.r,
                        offset: Offset(0, 9),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 114.h,
                left: MediaQuery.sizeOf(context).width / 2 - 55,
                child: Obx((){
                  return Container(
                  height: 102.h,
                  width: 101.w,
                  decoration: BoxDecoration(
                    image:  DecorationImage(
                      image: profileEditController.profileImagePath.isNotEmpty?FileImage(File(profileEditController.profileImagePath.toString())): AssetImage(ImagesPath.profileImage),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(90).r,
                  ),
                );
                }),
              ),
              Positioned(
                top: 188.h,
                left: 206.w,
                child: InkWell(
                  onTap: () {
                    profileEditController.updateProfile(ImageSource.gallery);
                  },
                  child: Container(
                    height: 45.h,
                    width: 45.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40).r,
                      color: Color(0xFF353945),
                    ),
                    child: Center(
                      child: Image.asset(
                        IconsPath.cameraIcon,
                        height: 15.h,
                        width: 19.w,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 254.h,
                left: 40.w,
                child: CustomText.upperTextfieldText(
                  title: "Name",
                  spantext: "*",
                  fontSize: 16.sp,
                  spanFontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  spanFontWeight: FontWeight.w400,
                ),
              ),
          
              Positioned(
                top: 288.h,
                left: 40.w,
                right: 40.w,
                child: CustomTextFromFiled(hintText: "Imam Hossain Shamim"),
              ),
              Positioned(
                top: 355.h,
                left: 50.w,
                child: CustomText.primaryText(
                  title: "Phone",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFBBB6C5),
                ),
              ),
              Positioned(
                top: 388.h,
                left: 40.w,
                right: 40.w,
                child: CustomTextFromFiled(hintText: "+8801776123466"),
              ),
              Positioned(
                top: 456.h,
                left: 40.w,
                child: CustomText.upperTextfieldText(
                  title: "Email",
                  spantext: "*",
                  fontSize: 16.sp,
                  spanFontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  spanFontWeight: FontWeight.w400,
                ),
              ),
              Positioned(
                top: 490.h,
                left: 40.w,
                right: 40.w,
                child: CustomTextFromFiled(hintText: "eventvlue@gmail.com"),
              ),
              Positioned(
                top: 559.h,
                left: 50.w,
                child: Text(
                  "Address",
                  style: GoogleFonts.roboto(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryColorDark,
                  ),
                ),
              ),
              Positioned(
                top: 594.h,
                left: 40.w,
                right: 40.w,
                child: CustomTextFromFiled(
                  hintText: "Mirpur 10, Dhaka, Bangladesh",
                ),
              ),
              Positioned(
                top: 686.h,
                left: 25.w,
                right: 25.w,
                child: CustomButtons(
                  text: "Update Profile",
                  onPressed: () {},
                  height: 42,
                  width: MediaQuery.widthOf(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
