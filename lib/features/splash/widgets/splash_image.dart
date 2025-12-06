import 'package:blue_event/core/constants/images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splashimage extends StatelessWidget {
  const Splashimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImagesPath.splashScreenImage1,
                      height: 63.h,
                      width: 111.w,
                    ),
                    Image.asset(
                      ImagesPath.splashScreenImage4,
                      height: 150.h,
                      width: 111.w,
                    ),
                    Image.asset(
                      ImagesPath.splashScreenImage7,
                      height: 109.h,
                      width: 111.w,
                    ),
                    
                  ],
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImagesPath.splashScreenImage2,
                      height: 104.h,
                      width: 111.w,
                    ),
                    Image.asset(
                      ImagesPath.splashScreenImage5,
                      height: 92.h,
                      width: 111.w,
                    ),
                    Image.asset(
                      ImagesPath.splashScreenImage8,
                      height: 161.h,
                      width: 111.w,
                    ),
                  ],
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImagesPath.splashScreenImage3,
                      height: 86.h,
                      width: 111.w,
                    ),
                    Image.asset(
                      ImagesPath.splashScreenImage6,
                      height: 161.h,
                      width: 111.w,
                    ),
                    Image.asset(
                      ImagesPath.splashScreenImage9,
                      height: 148.h,
                      width: 111.w,
                    ),
                  ],
                ),
              ],
            ); 
  }
}