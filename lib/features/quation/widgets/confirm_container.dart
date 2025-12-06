import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/icons_path.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmContainer extends StatelessWidget {
  const ConfirmContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20).r,
      height: 274.h,
      width: MediaQuery.widthOf(context),
      decoration: BoxDecoration(
        color: AppColors.buttonTextColor,
        border: BoxBorder.all(color: Color(0xFF0D6526).withValues(alpha: 0.20),width: 0.3.r),
        borderRadius: BorderRadius.circular(10).r,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 4,
            spreadRadius: 0,
            color: AppColors.primaryColorDark.withValues(alpha: 0.04),
          ),
        ]
      ),
      child: Column(
        children: [
          SizedBox(height: 28.h,),
          CustomText.primaryText(title: "Dear",color: Color(0xFF353794),fontSize: 20,fontWeight: FontWeight.w700),
          SizedBox(height: 13.h,),
          Image.asset(IconsPath.sucessIcon,height: 93.h,width: 97.w,), 
          SizedBox(height: 5.h,),
          CustomText.primaryText(title: "Thank You for Confirming",fontSize: 20,fontWeight: FontWeight.w700,color: AppColors.buttonColor),
          SizedBox(height: 5.h,),
          CustomText.primaryText(title: "Our team will contact you shortly with\ndetailed planning."),
        ],
      ),
    );
  }
}