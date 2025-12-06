import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/icons_path.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(10).r,
              height: 89.h,
              width: 158.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10).r,
                color: AppColors.buttonTextColor,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      IconsPath.locationIcon,
                      height: 21.h,
                      width: 16.5,
                    ),
                  ),
                  CustomText.primaryText(
                    title: "56/57, Shiddeshwari,\nBaily Road, Dhaka.",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10).r,
              height: 89.h,
              width: 158.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10).r,
                color: AppColors.buttonTextColor,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      IconsPath.locationIcon,
                      height: 21.h,
                      width: 16.5,
                    ),
                  ),
                  CustomText.primaryText(
                    title:
                        "Semonty Tower ( 4th\nFloor), Kodomtoli,\nKeranigonj, Dhaka",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 15.h),
        Text(
          "Call Us Now",
          style: GoogleFonts.kanit(
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.primaryColorDark,
          ),
        ),
        SizedBox(height: 15.h),
        Padding(
          padding: const EdgeInsets.only(left: 7).r,
          child: Row(
            children: [
              Image.asset(IconsPath.callIcon, height: 18.h, width: 18.w),
              SizedBox(width: 7.w),
              CustomText.primaryText(
                title: "+8801788193548  / +8801680122793",
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
        SizedBox(height: 15.h),

        Padding(
          padding: const EdgeInsets.only(left: 7).r,
          child: Row(
            children: [
              Image.asset(IconsPath.emailIcon, height: 18.h, width: 18.w),
              SizedBox(width: 7.w),
              CustomText.primaryText(
                title: "bluebirdeventbd@gmail.com",
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
        SizedBox(height: 30.h),
        Center(
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 42.h,
              width: 126.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10).r,
                gradient: LinearGradient(
                  colors: [Color(0xFF00E777), Color(0xFF00E777)],
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 16.w),
                  CustomText.robotoText(
                    title: "Call Now",
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.buttonTextColor,
                  ),
                  SizedBox(width: 5.w),
                  Image.asset(
                    IconsPath.aboutWhatsappIcon,
                    height: 22.h,
                    width: 22.w,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
