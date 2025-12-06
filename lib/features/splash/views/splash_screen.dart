import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/images_path.dart';
import 'package:blue_event/features/splash/controller/splash_controller.dart';
import 'package:blue_event/features/splash/widgets/splash_logo.dart';
import 'package:blue_event/features/splash/widgets/splash_container.dart';
import 'package:blue_event/features/splash/widgets/splash_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    SplashController splashController = Get.find();
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(gradient: AppColors.splashBackgroundColor),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Splashimage(),
            Positioned(
              top: 319.h,
              left: -10.w,
              child: Align(
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                  child: Image.asset(
                    ImagesPath.splashMiddleLeft,
                    height: 89.h,
                    width: 80.w,
                  ),
                ),
              ),
            ),

            Positioned(top: 390.h, child: Splashlogo()),

            Positioned(top: 618.h, child: Splashcontainer()),
          ],
        ),
      ),
    );
  }
}
