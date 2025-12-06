import 'package:blue_event/core/constants/icons_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class VideoDialog extends StatelessWidget {
  final String image;
  const VideoDialog({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
          contentPadding: EdgeInsets.all(0),
          content: Container(
            height: 435.h,
            width: 325.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 10,
                  top: 10,
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      IconsPath.closeIcon,
                      height: 30.h,
                      width: 30.w,
                    ),
                  ),
                ),
                Center(
              child: InkWell(
                onTap: () {},
                child: Image.asset(
                  IconsPath.videoIcon,
                  height: 91.h,
                  width: 91.w,
                ),
              ),
            ),
              ],
            )
          ),
        );
  }
}