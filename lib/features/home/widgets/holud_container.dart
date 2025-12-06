import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/icons_path.dart';
import 'package:blue_event/core/constants/images_path.dart';
import 'package:blue_event/core/routes/app_routes.dart';
import 'package:blue_event/features/home/controller/holud_controller.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HoludContainer extends StatelessWidget {
  final String? assetImage;
  final String title;
  final VoidCallback onFavorite;
  final VoidCallback onCart;
  final HoludController controller;
  final double? rightPadding;
  final double? bootomPadding;
  final int index;
  const HoludContainer({
    super.key,
    this.assetImage,
    required this.title,
    required this.onFavorite,
    required this.onCart,
    required this.controller,
    this.rightPadding,
    this.bootomPadding,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: rightPadding ?? 10.w,
        bottom: bootomPadding ?? 10.h,
      ),
      padding: EdgeInsets.only(top: 5).r,
      height: 219.h,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.details);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: assetImage != null
                    ? Image.asset(
                        ImagesPath.photographyImage,
                        height: 131.h,
                        width: 160.w,
                      )
                    : Image.asset(
                        ImagesPath.photographyImage,
                        height: 131.h,
                        width: 160.w,
                      ),
              ),
            ),
          ),

          SizedBox(height: 7.h),
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: CustomText.primaryText(
              title: title,
              fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(height: 7.h),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15).r,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() {
                  return InkWell(
                    onTap: onFavorite,
                    child: Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: BoxBorder.all(
                          color: Color(0xFF7CD3F6),
                          width: 0.5.w,
                        ),
                      ),
                      child: Center(
                        child: controller.isfavoriteList.contains(index)
                            ? Image.asset(
                                IconsPath.selectFavoriteIcon,
                                height: 14.h,
                                width: 16.w,
                              )
                            : Image.asset(
                                IconsPath.favoriteIcon,
                                height: 14.h,
                                width: 16.w,
                              ),
                      ),
                    ),
                  );
                }),
                Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: BoxBorder.all(
                      color: Color(0xFF7CD3F6),
                      width: 0.5.w,
                    ),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: onCart,
                      child: Image.asset(
                        IconsPath.cartIcon,
                        height: 15.h,
                        width: 15.w,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
