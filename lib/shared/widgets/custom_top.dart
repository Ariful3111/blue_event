import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/icons_path.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomTop extends StatelessWidget {
  final String title;
  const CustomTop({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25).w,
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 44.h,
              width: 44.w,
              decoration: BoxDecoration(
                color: AppColors.buttonTextColor,
                borderRadius: BorderRadius.circular(50).r
              ),
              child: Center(child: Image.asset(IconsPath.backIcon,width: 20.w,height: 14.h,),),
            ),
          ),
          SizedBox(width: 77.w,),
          CustomText.titleText(title: title)
        ],
      ),
    );
  }
}