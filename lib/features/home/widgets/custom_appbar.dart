import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/icons_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget {
  final VoidCallback favorite;
  final VoidCallback notification;
  
  const CustomAppbar({
    super.key,
    required this.favorite,
    required this.notification,
    
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: Scaffold.of(context).openDrawer,
          icon: Icon(Icons.menu),
          iconSize: 30.sp,
          color: AppColors.buttonColor,
        ),
        //SizedBox(width: 75.w,),
        Expanded(
          child: Center(
            child: Image.asset(
              "asstes/images/logo.png",
              height: 55.h,
              width: 127.w,
            ),
          ),
        ),
        //SizedBox(width: 40.w,),
        IconButton(
          onPressed: favorite,
          icon: Icon(
            Icons.favorite_outline,
            size: 22.sp,
            color: AppColors.buttonColor,
          ),
        ),
    
        InkWell(
          onTap: notification,
          child: Image.asset(
            IconsPath.notificationIcon,
            height: 37.h,
            width: 37.w,
          ),
        ),
        SizedBox(width: 8.w),
      ],
    );
  }
}
