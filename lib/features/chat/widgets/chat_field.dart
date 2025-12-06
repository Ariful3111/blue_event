import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/icons_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatField extends StatelessWidget {
  final TextEditingController chattextController;
  const ChatField({super.key, required this.chattextController});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0).r,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: chattextController,

              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      IconsPath.linkIcon,
                      height: 10.h,
                      width: 10.w,
                    ),
                  ),
                ),
                hintText: "Type a message...",
                hintStyle: GoogleFonts.inter(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondaryColorLight,
                ),
                filled: true,
                fillColor: AppColors.buttonTextColor,
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.r),
                  borderRadius: BorderRadius.circular(8).r,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                    color: Color(0xFFB2B2B2).withValues(alpha: 0.25),
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFB2B2B2).withValues(alpha: 0.25),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(color: Color(0XFF5DC9F4)),
                ),
              ),
            ),
          ),
          SizedBox(width: 14.w),
          InkWell(
            onTap: () {},
            child: Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20).r,
                color: AppColors.buttonTextColor,
                //image: DecorationImage(image: AssetImage(IconsPath.sendIcon),fit: BoxFit.none)
              ),
              child: Center(
                child: Image.asset(
                  IconsPath.sendIcon,
                  height: 22.h,
                  width: 22.w,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
