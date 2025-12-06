import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/routes/app_routes.dart';
import 'package:blue_event/features/quation/widgets/quotation_button.dart';
import 'package:blue_event/features/quation/widgets/quotation_textfield.dart';
import 'package:blue_event/shared/widgets/custom_container.dart';
import 'package:blue_event/shared/widgets/custom_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GeTQuotation extends StatelessWidget {
  const GeTQuotation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContainer(
        widget: ListView(
          children: [
            CustomTop(title: 'Get Quotatuion'),
            SizedBox(height: 70.h),
            Container(
              height: MediaQuery.heightOf(context),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(58.r),
                  topRight: Radius.circular(58.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.secondaryColor.withValues(alpha: 0.25),
                    spreadRadius: 0,
                    blurRadius: 4.3.r,
                    offset: Offset(0, 9),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  QuotationTextfield(),
                  SizedBox(height: 20.h),
                  QuotationButton(
                    text: "Submit",
                    onPressed: () {
                      Get.toNamed(AppRoutes.quotion);
                    },
                    height: 42.h,
                    width: 341.w,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
