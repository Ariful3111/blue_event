import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/images_path.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashcontainer extends StatelessWidget {
  const Splashcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 163.h,
      width: 353.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.secondaryColor.withValues(alpha: 0.10),
            spreadRadius: 0,
            blurRadius: 30.r,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0.w,
            top: 0.h,
            child: Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                ImagesPath.splashcontainerDesign,
                height: 71.h,
                width: 68.w,
              ),
            ),
          ),
          Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 15.h),
              Text(
                "Sister Concerns",
                style: GoogleFonts.ntr(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF3DB4E7),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20).r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //SizedBox(width: 20.w),
                    Column(
                      children: [
                        Image.asset(
                          ImagesPath.splashScreenLogo1,
                          height: 58.h,
                          width: 78.w,
                        ),
                
                        CustomText.splashText(title: "Logistics Support"),
                      ],
                    ),
                    SizedBox(width: 8.w),
                    Column(
                      children: [
                        Image.asset(
                          ImagesPath.splashScreenLogo2,
                          height: 70.h,
                          width: 100.w,
                        ),
                        CustomText.splashText(
                          title: "Photography &\nCinematography",
                        ),
                      ],
                    ),
                    SizedBox(width: 8.w),
                    Column(
                      children: [
                        Image.asset(
                          ImagesPath.splashScreenLogo3,
                          height: 75.h,
                          width: 96.w,
                        ),
                
                        CustomText.splashText(title: "Catering Services"),
                      ],
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
