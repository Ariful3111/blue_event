import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Conversation extends StatelessWidget {
  final bool isMe;
  const Conversation({super.key, required this.isMe});

  @override
  Widget build(BuildContext context) {
   
    return Column(
      children: [
        Align(
         alignment:  isMe ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            height: 50.h,
            width: 302.w,
            decoration: BoxDecoration(
              color: isMe ? Color(0xFF5DC9F4) :Color(0xFF8EE6E1).withValues(alpha: 0.25),
              borderRadius: BorderRadius.circular(10).r,
            ),
            child: Center(
              child: CustomText.primaryText(
                title: "Hi! I have a question about my order",
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
    
        SizedBox(height: 5.h),
        Align(
          alignment: isMe ? Alignment.bottomRight : Alignment.bottomLeft,
          child: CustomText.primaryText(
            title: "Today, 7:02pm",
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 31.h),
      ],
    );
  }
}
