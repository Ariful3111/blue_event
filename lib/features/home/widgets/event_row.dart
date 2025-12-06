import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/icons_path.dart';
import 'package:blue_event/features/home/controller/details_controller.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EventRow extends StatelessWidget {
  
  const EventRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int index=0;
    DetailsController detailsController = Get.find();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18).w,
      child: Row(
        children: [
          CustomText.titleText(title: "Event Management"),
          SizedBox(width: 100.w),
          Obx(() {
            return InkWell(
              onTap: (){
                detailsController.toggleIsfavoriteList(index);
              },
              child: Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                  color: AppColors.buttonTextColor,
                  borderRadius: BorderRadius.circular(20),
                  border: BoxBorder.all(color: Color(0xFF7CD3F6), width: 0.5.w),
                ),
                child: Center(
                  child: detailsController.isfavoriteList.contains(index)
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
          SizedBox(width: 16.w,),
          Container(
            height: 30.h,
            width: 30.w,
            decoration: BoxDecoration(
              color: AppColors.buttonTextColor,
              borderRadius: BorderRadius.circular(20),
              border: BoxBorder.all(color: Color(0xFF7CD3F6), width: 0.5.w),
            ),
            child: Center(
              child: InkWell(
                onTap: (){detailsController.toggleIscartList(index);},
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
    );
  }
}
