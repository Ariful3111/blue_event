import 'package:blue_event/core/constants/images_path.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splashlogo extends StatelessWidget {
  const Splashlogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Image.asset(ImagesPath.splashlogo, height: 142.h, width: 328.w),
        CustomText.splashText(
          title: "One Step Solution for Your Dreamy Day!",
          fontSize: 15.sp,
          fontWeight: FontWeight.w700,
          color: Color(0xFF006AB4),
        ),
      ],
    );
  }
}
