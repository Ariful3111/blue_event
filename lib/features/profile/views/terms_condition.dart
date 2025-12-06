import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/shared/widgets/custom_container.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:blue_event/shared/widgets/custom_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsCondition extends StatelessWidget {
  const TermsCondition({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Scaffold(
      body: CustomContainer(
        widget: SafeArea(
          child: RawScrollbar(
            controller: scrollController,
            thumbVisibility: true,
            trackVisibility: true,
            thumbColor: AppColors.primaryColor,
            trackColor: Color(0xFFE9EBED).withValues(alpha: 0.50),
            trackRadius: Radius.circular(20).r,
            thickness: 8.r,
            radius: Radius.circular(20).r,
            child: ListView(
              controller: scrollController,
              children: [
                CustomTop(title: "Terms Condition"),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.only(left: 43,right: 20).r,
                  child: CustomText.jostText(
                    title: "Terms",
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColorDark,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.only(left: 43,right: 20).r,
                  child: CustomText.jostText(
                    title:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.",
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.only(left: 43,right: 20).r,
                  child: CustomText.jostText(
                    title: "Changes to the Service and/or Terms:",
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColorDark,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.only(left: 43,right: 20).r,
                  child: CustomText.jostText(
                    title:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
