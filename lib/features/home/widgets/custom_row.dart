import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRow extends StatelessWidget {
  final String data1;
  final String? data2;
  final VoidCallback onTap;
  final String? icon;
  const CustomRow({
    super.key,
    required this.data1,
    this.data2,
    required this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0).w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText.titleText(title: data1),
      icon==null?    InkWell(
            onTap: onTap,
            child: CustomText.primaryText(
              title: data2!,
              color: AppColors.primaryColor,
            ),
          ):InkWell(
            onTap: onTap,
            child: Image.asset(icon!,height: 30.h,width: 30.w,)), 
        ],
      ),
    );
  }
}
