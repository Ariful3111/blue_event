import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/icons_path.dart';
import 'package:blue_event/features/home/controller/main_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    MainHomeController mainHomeController = Get.find();

    return Obx(() {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: mainHomeController.selectedIndex.value,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        backgroundColor: AppColors.buttonTextColor,
        onTap: mainHomeController.changeIndex,
        selectedItemColor: Color(0xFF386BF6),
        unselectedItemColor: AppColors.primaryColorDark,
        selectedLabelStyle: GoogleFonts.plusJakartaSans(
          fontSize: 10.sp,
          color: Color(0xFF386BF6),
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: GoogleFonts.plusJakartaSans(
          fontSize: 10.sp,
          color: AppColors.primaryColorDark,
          fontWeight: FontWeight.w500,
        ),

        items: [
          BottomNavigationBarItem(
            icon: mainHomeController.selectedIndex.value == 0
                ? Image.asset(
                    IconsPath.homeSelectedIcon,
                    height: 26.h,
                    width: 26,
                  )
                : Image.asset(IconsPath.homeNav, height: 26.h, width: 26),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: mainHomeController.selectedIndex.value == 1
                ? Image.asset(
                    IconsPath.cartSelectedIcon,
                    height: 26.h,
                    width: 26,
                  )
                : Image.asset(IconsPath.cartNav, height: 26.h, width: 26),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: mainHomeController.selectedIndex.value == 2
                ? Image.asset(
                    IconsPath.quotationSelectIcon,
                    height: 26.h,
                    width: 26,
                  )
                : Image.asset(IconsPath.quationNav, height: 26.h, width: 26),
            label: "Quation",
          ),
          BottomNavigationBarItem(
            icon: mainHomeController.selectedIndex.value == 3
                ? Image.asset(IconsPath.chatSelectIcon, height: 26.h, width: 26)
                : Image.asset(IconsPath.chatNav, height: 26.h, width: 26),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: mainHomeController.selectedIndex.value == 4
                ? Image.asset(
                    IconsPath.profileSelectIcon,
                    height: 26.h,
                    width: 26,
                  )
                : Image.asset(IconsPath.profileNav, height: 26.h, width: 26),
            label: "Profile",
          ),
        ],
      );
    });
  }
}
