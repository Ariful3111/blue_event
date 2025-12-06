import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/features/profile/widgets/contact_info.dart';
import 'package:blue_event/features/profile/widgets/contact_text_field.dart';
import 'package:blue_event/shared/widgets/custom_container.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContainer(
        widget: SafeArea(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 30.w),
            child: ListView(
              children: [
                Center(
                  child: Text(
                    "Contuct Us",
                    style: GoogleFonts.kanit(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                CustomText.secondaryText(
                  title: "We're here to help you,get in touch anytime",
                ),
                SizedBox(height: 20.h),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Our Location",
                    style: GoogleFonts.kanit(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColorDark,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                ContactInfo(),
                SizedBox(height: 20.h),
                ContactTextField(),
                SizedBox(height: 36.h),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 42.h,
                    width: MediaQuery.widthOf(context),
                    decoration: BoxDecoration(
                      color: AppColors.buttonColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Text(
                        "Send Message",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
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
