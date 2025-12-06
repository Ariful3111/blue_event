import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/icons_path.dart';
import 'package:blue_event/core/constants/images_path.dart';
import 'package:blue_event/core/routes/app_routes.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20).r,
      height: 150.h,
      width: MediaQuery.widthOf(context),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImagesPath.homeContainer),
          fit: BoxFit.fill,
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 7.2.r,
            spreadRadius: 0.r,
            color: AppColors.primaryColorDark.withValues(alpha: 0.10),
          )
        ]
      ),
      child: Row(
        children: [
          Container(
            height: 50.h,
            width: 50.w,
            decoration: BoxDecoration(
              border: Border.all(width: 2.r, color: AppColors.buttonTextColor),
              image: DecorationImage(
                image: AssetImage(ImagesPath.profileImage),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(40).r,
            ),
          ),
          SizedBox(width: 15.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  CustomText.primaryText(
                    title: "Shamim Hossain",
                    color: AppColors.buttonTextColor,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(width: 40.w,),
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.profileEdit);
                    },
                    child: Image.asset(IconsPath.editIcon,height: 20.h,width: 20.w,),
                  )
                ],
              ),
              CustomText.primaryText(
                title: "Shamim@gmail.com",
                color: AppColors.buttonTextColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
              CustomText.primaryText(
                title: "01776968299",
                color: AppColors.buttonTextColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
              CustomText.primaryText(
                title: "Mirpur 10, Dhaka, Bangladesh",
                color: AppColors.buttonTextColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
