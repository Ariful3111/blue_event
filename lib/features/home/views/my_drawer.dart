import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/icons_path.dart';
import 'package:blue_event/core/routes/app_routes.dart';
import 'package:blue_event/features/home/controller/my_drawer_controller.dart';
import 'package:blue_event/features/home/widgets/drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    MyDrawerController myDrawerController = Get.find();
    final size = MediaQuery.of(context).size;
    return Drawer(
      child: Container(
        width: size.width * 0.8,
        height: size.height,
        decoration: BoxDecoration(
          color: AppColors.buttonTextColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r),
          ),
        ),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  size: 28.sp,
                  color: AppColors.primaryColorDark,
                ),
                onPressed: () {
                  Get.back();
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 40).r,
              child: Row(
                children: [
                  Container(
                    height: 52.h,
                    width: 52.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(
                        image: AssetImage(
                          myDrawerController.profileImage.value,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(width: 17.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      drawerText(title: myDrawerController.userName.value),
                      SizedBox(height: 5.h),
                      drawerText(
                        title: myDrawerController.email.value,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.h),
            DrawerItem(
              icon: IconsPath.homeDrawerIcon,
              text: "Homepage",
              onTap: () {
                Get.back();
                Get.toNamed(AppRoutes.mainHome);
                
              },
            ),
            DrawerItem(
              icon: IconsPath.contactUsIcon,
              text: "Contact Us",
              onTap: () {
                Get.toNamed(AppRoutes.contactUs);
              },
            ),
            DrawerItem(
              icon: IconsPath.contactUsIcon,
              text: "About Us",
              onTap: () {
                Get.toNamed(AppRoutes.aboutUs);
              },
            ),
            DrawerItem(
              icon: IconsPath.profileNav,
              text: "My Profile",
              onTap: () {
                myDrawerController.closeDrawer();
                Get.toNamed(AppRoutes.profile);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget drawerText({
    required String title,
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return Text(
      title,
      style: GoogleFonts.nunitoSans(
        fontSize: fontSize ?? 16.sp,
        fontWeight: fontWeight ?? FontWeight.w700,
        color: color ?? AppColors.primaryColorDark,
      ),
    );
  }

}
