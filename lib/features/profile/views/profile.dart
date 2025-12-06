import 'package:blue_event/core/constants/icons_path.dart';
import 'package:blue_event/core/routes/app_routes.dart';
import 'package:blue_event/features/profile/widgets/profile_container.dart';
import 'package:blue_event/features/profile/widgets/profile_elements.dart';
import 'package:blue_event/features/profile/widgets/updatePassword_dialog.dart';
import 'package:blue_event/shared/widgets/custom_buttons.dart';
import 'package:blue_event/shared/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContainer(
        widget: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10).r,
            child: Column(
              children: [
                ProfileContainer(),
                SizedBox(height: 40.h),
                ProfileElements(
                  image: IconsPath.passwordIcon,
                  text: "Change Password",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return UpdatepasswordDialog();
                      },
                    );
                  },
                ),
                ProfileElements(
                  image: IconsPath.aboutProfileIcon,
                  text: "About Us",
                  onTap: () {
                    Get.toNamed(AppRoutes.aboutUs);
                  },
                ),
                ProfileElements(
                  image: IconsPath.contactProfileIcon,
                  text: "Contact Us",
                  onTap: () {
                    Get.toNamed(AppRoutes.contactUs);
                  },
                ),
                ProfileElements(
                  image: IconsPath.privacyIcon,
                  text: "Privacy Policy",
                  onTap: () {
                    Get.toNamed(AppRoutes.privacyPolicy);
                  },
                ),
                ProfileElements(
                  image: IconsPath.termsIcon,
                  text: "Terms & Condition",
                  onTap: () {
                    Get.toNamed(AppRoutes.termsCondition);
                  },
                ),
                SizedBox(height: 5.h),
                CustomButtons(
                  text: "Log Out",
                  onPressed: () {
                    Get.offAllNamed(AppRoutes.signup);
                  },
                  height: 42.h,
                  width: MediaQuery.widthOf(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
