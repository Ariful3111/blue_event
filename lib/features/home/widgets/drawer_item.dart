import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DrawerItem extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  final String text;
  const DrawerItem({super.key, required this.onTap, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 23.w, right: 12.w, bottom: 5.h),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(15).r,
          height: 58.h,
          width: Get.width,
          decoration: BoxDecoration(
            color: Color(0xFFF4F5F6),
            borderRadius: BorderRadius.circular(10).r,
          ),
          child: Row(
            children: [
              Image.asset(
                icon,
                height: 17.h,
                width: 18.h,
                color: AppColors.primaryColorDark,
              ),
              SizedBox(width: 18.w),
              CustomText.primaryText(
                title: text,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
