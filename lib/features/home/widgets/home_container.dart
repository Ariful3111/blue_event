import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/icons_path.dart';
import 'package:blue_event/core/constants/images_path.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5.w),
      height: 150.h,
      width: 370.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImagesPath.homeContainer),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 21, left: 25, bottom: 25).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book Your Event Decor\nToday!",
                  style: GoogleFonts.pontanoSans(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.buttonTextColor,
                  ),
                ),
                SizedBox(height: 15.h),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 33.h,
                    width: 104.w,
                    decoration: BoxDecoration(
                      color: AppColors.buttonTextColor,
                      borderRadius: BorderRadius.circular(17).r,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 23.h,
                          width: 23.w,
                          decoration: BoxDecoration(
                            color: Color(0xFF4EF47C),
                            borderRadius: BorderRadius.circular(20).r
                          ),
                          child: Center(
                            child: Image.asset(IconsPath.callOutgoingIcon,height: 13.h,width: 13.w,),
                          ),
                        ),
                        SizedBox(width: 5.w,),
                        CustomText.primaryText(title: "Call Now",fontSize: 10.sp,fontWeight: FontWeight.w600),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(ImagesPath.boardImage,height: 140.h,
          width: 139.w,),
        ],
      ),
    );
  }
}
