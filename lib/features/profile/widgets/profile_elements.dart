import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileElements extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onTap;
  const ProfileElements({super.key, required this.image, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18).r,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12).r,
          height: 60.h,
          width: MediaQuery.widthOf(context),
          decoration: BoxDecoration(
            color: AppColors.buttonTextColor,
            borderRadius: BorderRadius.circular(12).r,
            border: Border.all(width: 1.r,color: Color(0xFFF2F2F2)),
          ),
          child: Row(
            children: [
              Container(
                height: 35.h,
                width: 35.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFF2EEFF),
                ),
                child: Center(
                  child: Image.asset(image,height: 21.h,width: 20.w,),
                ),
              ),
              SizedBox(width: 8.w,),
              CustomText.primaryText(title: text,fontWeight: FontWeight.w400),
            ],
          ),
        ),
      ),
    );
  }
}