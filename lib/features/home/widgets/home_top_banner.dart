
import 'package:blue_event/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTopBanner extends StatelessWidget {
  final String image;
  const HomeTopBanner({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: 10.w),
        height: 150.h,
        width: MediaQuery.widthOf(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColorDark.withValues(alpha: 0.02),
              blurRadius: 4,
              offset: Offset(3, 4),
              spreadRadius: 0,
            ),
          ],
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        
      ),
    );
  }
}