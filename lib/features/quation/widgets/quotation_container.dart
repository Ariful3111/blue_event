import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/routes/app_routes.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class QuotationContainer extends StatelessWidget {
  const QuotationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 18.h, right: 40.w, left: 40.w),
      child: Container(
        padding: EdgeInsets.all(16).r,
        height: 92.h,
        width: MediaQuery.widthOf(context),
        decoration: BoxDecoration(
          color: AppColors.buttonTextColor,

          borderRadius: BorderRadius.circular(15).r,

          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 2,
              spreadRadius: -8,
              color: Color(0xFF0F0F0F).withValues(alpha: 0.10),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText.primaryText(title: "Quotation No.1"),
                listText(text: "Event Address, 12 Dhaka"),
                listText(text: "Bangladesh"),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                listText(
                  text: "Pending",
                  color: Color(0xFFD8790C),
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w500,
                ),
                listText(
                  text: "8 Dec, 2025",
                  color: AppColors.primaryColorDark,
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w300,
                ),
                SizedBox(height: 5.h),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.quotationView);
                  },
                  child: Container(
                    height: 29.h,
                    width: 84.w,
                    decoration: BoxDecoration(
                      color: AppColors.buttonTextColor,
                      border: BoxBorder.all(
                        color: Color(0xFF7CD3F6),
                        width: 1.r,
                      ),
                      borderRadius: BorderRadius.circular(9).r,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 1),
                          blurRadius: 1,
                          spreadRadius: 0,
                          color: AppColors.primaryColorDark.withValues(
                            alpha: 0.25,
                          ),
                        ),
                      ],
                    ),
                    child: Center(
                      child: listText(
                        text: "View Quotation",
                        color: AppColors.primaryColorDark,
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget listText({
    required String text,
    FontWeight? fontWeight,
    double? fontSize,
    Color? color,
  }) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: fontSize ?? 13.sp,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? Color(0xFF686868),
      ),
    );
  }
}
