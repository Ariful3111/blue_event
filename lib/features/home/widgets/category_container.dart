import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/images_path.dart';
import 'package:blue_event/core/routes/app_routes.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryContainer extends StatelessWidget {
  final String title;
  final String? assetImage;
  const CategoryContainer({super.key, required this.title, this.assetImage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(AppRoutes.myCategory);
      },
      child: Container(
        margin: EdgeInsets.only(right: 10.w, bottom: 10.h),
        height: 182.h,
        width: 175.w,
        decoration: BoxDecoration(
          color: AppColors.buttonTextColor,
          borderRadius: BorderRadius.circular(20).r,
          boxShadow: [
            BoxShadow(
              blurRadius: 5.8,
              spreadRadius: 0,
              offset: Offset(2, 2),
              color: AppColors.primaryColorDark.withValues(alpha: 0.25),
            ),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
              child: assetImage != null
                  ? Image.asset(
                      ImagesPath.categotyImage,
                      height: 139.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      ImagesPath.categotyImage,
                      height: 139.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
            ),

            SizedBox(height: 10.h),
            CustomText.primaryText(title: title, fontWeight: FontWeight.w400),
          ],
        ),
      ),
    );
  }
}
