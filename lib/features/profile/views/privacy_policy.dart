import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/shared/widgets/custom_container.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:blue_event/shared/widgets/custom_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Scaffold(
      body: CustomContainer(
        widget: SafeArea(
          child: RawScrollbar(
            controller: scrollController,
            thumbVisibility: true,
            trackVisibility: true,
            thumbColor: AppColors.primaryColor,
            trackColor: Color(0xFFE9EBED).withValues(alpha: 0.50),
            trackRadius: Radius.circular(20).r,
            thickness: 8.r,
            radius: Radius.circular(20).r,
            child: ListView(
              controller: scrollController,
              children: [
                CustomTop(title: "Privacy Policy"),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.only(left: 43).r,
                  child: CustomText.robotoText(
                    title: "Privacy Policy",
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryColorDark,
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.only(left: 43,right: 15).r,
                  child: CustomText.robotoText(
                    title:
                        "built the Find hotel app as a Commercial app. This\nSERVICE is provided by and is intended for use as is.\n\nThis page is used to inform visitors regarding our policies\nwith the collection, use, and disclosure of Personal\nInformation if anyone decided to use our Service.\n\nIf you choose to use our Service, then you agree to the\ncollection and use of information in relation to this policy.\nThe Personal Information that we collect is used for\nproviding and improving the Service. We will not use or share your information with anyone except as described\nin this Privacy Policy.\n\nThe terms used in this Privacy Policy have the same\nmeanings as in our Terms and Conditions, which is\naccessible at Find hotel unless otherwise defined in this\nPrivacy Policy.",
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.only(left: 43).r,
                  child: CustomText.robotoText(
                    title: "Infomation Collection and Use",
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryColorDark,
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.only(left: 43,right: 15).r,
                  child: CustomText.robotoText(
                    title:
                        "For a better experience, while using our Service, we may\nrequire you to provide us with certain personally\nidentifiable information. The information that we request\nwill be retained by us and used as described in this\nprivacy policy.\n\nThe app does use third party services that may collect\ninformation used to identify you.\n\nLink to privacy policy of third party service providers used\nby the app",
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.only(left: 43).r,
                  child: CustomText.robotoText(
                    title: "Log Data",
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryColorDark,
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.only(left: 43,right: 15).r,
                  child: CustomText.robotoText(
                    title:
                        "We want to inform you that whenever you use our Service,\nin a case of an error in the app we collect data and\ninformation (through third party products) on your phone\ncalled Log Data. This Log Data may include information\nsuch as your device Internet Protocol (“IP”) address,\ndevice name, operating system version, the configuration\nof the app when utilizing our Service, the time and date of\nyour use of the Service, and other statistics.",
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.only(left: 43).r,
                  child: CustomText.robotoText(
                    title: "Cookies",
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryColorDark,
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.only(left: 43,right: 15).r,
                  child: CustomText.robotoText(
                    title:
                        "Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These",
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
