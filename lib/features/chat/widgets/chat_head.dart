import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/icons_path.dart';
import 'package:blue_event/core/constants/images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatHead extends StatelessWidget {
  const ChatHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.only(left: 20,right: 37).r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50).r,
                            border: BoxBorder.all(
                              width: 2.r,
                              color: Color(0xFF2853AF),
                            ),
                            image: DecorationImage(
                              image: AssetImage(ImagesPath.profileImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 15.w,),
                        Text("Ariful Islam",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColorDark
                        ),
                        )
                      ],
                    ),
                    InkWell(
                      onTap:(){},
                      child: Image.asset(IconsPath.whatsappIcon,height: 25.h,width: 25.w,),
                    ),
                  ],
                ),
              );
  }
}