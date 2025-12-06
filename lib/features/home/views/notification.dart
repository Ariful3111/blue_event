import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/shared/widgets/custom_container.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:blue_event/shared/widgets/custom_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Notification extends StatelessWidget {
  const Notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContainer(
        widget: SafeArea(
          child: Column(
            children: [
              CustomTop(title: "Notification"),
              SizedBox(height: 42.h),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 25.w,vertical: 10.h),
                      padding: EdgeInsets.all(10).r,
                      height: 85.h,
                      width: MediaQuery.widthOf(context),
                      decoration: BoxDecoration(
                        color: AppColors.buttonTextColor,
                        borderRadius: BorderRadius.circular(15).r,
                        border: BoxBorder.all(color: Color(0xFFEFEFEF),width: 1.r),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 13,
                            spreadRadius: -8,
                            color: AppColors.primaryColorDark.withValues(alpha: 0.20),
                          ),
                        ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText.primaryText(title: "Check your Quotation"),
                              Text("4:00 PM, 8 Dec, 2025",
                              style: GoogleFonts.roboto(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.primaryColorDark
                              ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h,),
                          Text("Your requested quotation has been received.\nCheck and confirm.",
                              style: GoogleFonts.roboto(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.secondaryColorLight
                              ),
                              ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
