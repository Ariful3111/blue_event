import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/images_path.dart';
import 'package:blue_event/features/quation/widgets/quotation_summery.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuotationViewContainer extends StatelessWidget {
  const QuotationViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20).r,
      child: SingleChildScrollView(
        child: Container(
          height: 500.h,
          width: MediaQuery.widthOf(context),
          decoration: BoxDecoration(
            color: AppColors.buttonTextColor,
            borderRadius: BorderRadius.circular(15).r,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 4,
                spreadRadius: 0,
                color: AppColors.primaryColorDark.withValues(alpha: 0.04),
              ),
            ],
          ),
          child: Column(
            children: [
              SizedBox(height: 7.h),
              Image.asset(ImagesPath.logo, height: 43.h, width: 100.w),
              SizedBox(height: 15.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15).r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText.upperTextfieldText(
                      title: "Quotation No",
                      leftPadding: 0,
                      fontSize: 12.sp,
                      spantext: ": 22101106",
                      spanColor: AppColors.primaryColorDark,
                      fontWeight: FontWeight.w400,
                      spanFontWeight: FontWeight.w600,
                      spanFontSize: 12.sp,
                    ),
                    CustomText.upperTextfieldText(
                      title: "Placed on",
                      leftPadding: 0,
                      fontSize: 12.sp,
                      spantext: ": 11-10-2022",
                      spanColor: AppColors.primaryColorDark,
                      fontWeight: FontWeight.w400,
                      spanFontWeight: FontWeight.w600,
                      spanFontSize: 12.sp,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.h),
              Divider(),
              SizedBox(height: 8.h),
              CustomText.primaryText(
                title: "Imam Hossain Shamim",
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 4.h),
              Container(
                height: 1.h,
                width: 185.w,
                decoration: BoxDecoration(
                  color: Color(0xFFC3C3C3).withValues(alpha: 0.30),
                ),
              ),
              SizedBox(height: 4.h),
              CustomText.primaryText(
                title: "01776968299",
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 4.h),
              CustomText.primaryText(
                title: "Dhaka,Mirpur, Dhaka",
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 4.h),
              CustomText.primaryText(
                title: "Event Date : 04 October2025",
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 10.h),
              Divider(),
              SizedBox(height: 12.h),
              CustomText.primaryText(
                title: "Total Summery",
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 12.h),
              Expanded(
                child: ListView.builder(
                  
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return QuotationSummery();
                  },
                ),
              ),
              calculation(context: context),
            ],
          ),
        ),
      ),
    );
  }

  Widget calculation({required BuildContext context}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: 1.h,
          width: MediaQuery.widthOf(context),
          decoration: BoxDecoration(color: AppColors.buttonColor),
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            SizedBox(width: 190.w),
            CustomText.primaryText(title: "Subtotal:", fontSize: 12.sp),
            SizedBox(width: 36.w),
            CustomText.primaryText(
              title: "3080.00",
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(width: 15.w),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 190.w),
            CustomText.primaryText(title: "Discount:", fontSize: 12.sp),
            SizedBox(width: 36.w),
            CustomText.primaryText(
              title: "-300.00",
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(width: 15.w),
          ],
        ),
        SizedBox(height: 10.h),
        Container(
          height: 1.h,
          width: 171.w,
          decoration: BoxDecoration(color: AppColors.buttonColor),
        ),
        SizedBox(height: 5.h),
        Row(
          children: [
            SizedBox(width: 210.w),
            CustomText.primaryText(title: "Total:", fontSize: 12.sp),
            SizedBox(width: 36.w),
            CustomText.primaryText(
              title: "2780",
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(width: 15.w),
          ],
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
