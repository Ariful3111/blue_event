import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/features/home/controller/details_controller.dart';
import 'package:blue_event/features/home/widgets/description_tab.dart';
import 'package:blue_event/features/home/widgets/photo_tab.dart';
import 'package:blue_event/features/home/widgets/video_tab.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class CustomTabContainer extends StatelessWidget {
  const CustomTabContainer({super.key});

  @override
  Widget build(BuildContext context) {
    DetailsController detailsController = Get.find();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18).r,
      height: 460.h,
      width: 356.w,
      decoration: BoxDecoration(
        color: AppColors.buttonTextColor,
        borderRadius: BorderRadius.circular(12).r,
      ),
      child: Column(
        children: [
          DefaultTabController(
          
            length: 3,
            child: TabBar(
              
              controller: detailsController.tabController,
              indicatorColor: AppColors.buttonColor,
              tabs: [
                SizedBox(
                  height: 40.h,
                  child: Center(
                    child: CustomText.primaryText(
                      title: 'Photo',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                  child: Center(
                    child: CustomText.primaryText(
                      title: 'Video',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                  child: Center(
                    child: CustomText.primaryText(
                      title: 'Description',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            
            ),
          
          ),
          Expanded(

            child: TabBarView(
              controller: detailsController.tabController,
              children: [
            PhotoTab(),
            VideoTab(),
            DescriptionTab(),
          ]))
        ],
      ),
    );
  }
}
