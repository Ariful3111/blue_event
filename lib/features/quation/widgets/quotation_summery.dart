import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/images_path.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuotationSummery extends StatelessWidget {
  const QuotationSummery({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15).r,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(ImagesPath.categotyImage, height: 36.h, width: 36.w),
                  SizedBox(width: 8.w),
                  CustomText.primaryText(
                    title: "Stage",
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  
                ],
              ),
              CustomText.upperTextfieldText(
                    title: "1000 x 1 =",
                    spantext: "1000",
                    fontSize: 12.sp,
                    spanFontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    spanFontWeight: FontWeight.w500,
                    spanColor: AppColors.primaryColorDark
                  ),
            ],
          ),
          SizedBox(height: 10.h,),
          Divider(),
        ],
      ),
    );
  }
}
