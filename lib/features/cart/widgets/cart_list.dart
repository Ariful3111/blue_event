import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/icons_path.dart';
import 'package:blue_event/core/constants/images_path.dart';
import 'package:blue_event/features/cart/controller/cart_list_controller.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    CartListController cartListController = Get.find();
    return Obx(() {
      return Container(
        padding: EdgeInsets.all(8).r,
        height: 124.h,
        width: MediaQuery.widthOf(context),
        decoration: BoxDecoration(
          color: cartListController.acceptTerms.value
              ? Color(0xFFCBEDFD)
              : Color(0xFFE4F5FD).withValues(alpha: 0.40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
              value: cartListController.acceptTerms.value,
              onChanged: cartListController.toggleAcceptTerms,
            ),

            Container(
              padding: EdgeInsets.all(4),
              height: 107.h,
              width: 310.w,
              decoration: BoxDecoration(
                color: AppColors.buttonTextColor,
                borderRadius: BorderRadius.circular(12).r,
              ),
              child: Row(
                children: [
                  Container(
                    height: 89.h,
                    width: 127.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r,
                    ),
                    child: Image.asset(
                      ImagesPath.photographyImage,
                      height: 89.h,
                      width: 127.w,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 6).r,
                        child: Row(
                          children: [
                            CustomText.primaryText(title: "Stage"),
                            SizedBox(width: 105.w),
                            InkWell(
                              onTap: () {},
                              child: Image.asset(
                                IconsPath.deleteIcon,
                                height: 19.h,
                                width: 16.w,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8).r,
                        child: Row(
                          children: [
                            SizedBox(width: 85.w),
                            InkWell(
                              onTap: () {
                                cartListController.decreaseQuantity();
                              },
                              child: Container(
                                height: 20.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0XFF5DC9F4),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.remove,
                                    color: AppColors.buttonTextColor,
                                    size: 16.sp,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 9.w),
                            CustomText.primaryText(
                              title: "${cartListController.quantity.value}",
                              fontSize: 18.sp,
                            ),
                            SizedBox(width: 9.w),
                            InkWell(
                              onTap: () {
                                cartListController.increaseQuantity();
                              },
                              child: Container(
                                height: 20.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0XFF5DC9F4),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: AppColors.buttonTextColor,
                                    size: 16.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
