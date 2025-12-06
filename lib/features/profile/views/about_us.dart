import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/shared/widgets/custom_container.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:blue_event/shared/widgets/custom_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

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
                CustomTop(title: "About Us"),
                SizedBox(height: 24.h),
                Center(
                  child: CustomText.robotoText(
                    title:
                        "With a perfect blend of experience and passion, Dhaka\nEvent Planner is an event management company in\nBangladesh. We've emerged as a company with ideas to\nturn your corporate or personal event into something\nworth remembering. With the help of our creative team,\nwe provide our services to most types of corporate events\nincluding, but not limited to, seminars, conferences, trade\nshows, cultural events, company or organization\nmilestones, exhibitions, product launches, concerts,\ncompany annual meetings, corporate picnics, fashion\nshows and appreciation events. We will also strive to\nmake your wedding events, birthday events and other\npersonal events unforgettable.\nBangladesh, with Dhaka at the heart of it, is a country that\nhas become a wonder for quite a few people with its rapid\neconomic growth in the last 10 years or so. Companies,\norganizations and various businesses have become the\ndriving force for the economic development of this\ncountry. Both corporate and personal event management\nservices in Dhaka, Chittagong, Cox's Bazar and in the\nwhole Bangladesh is becoming more and more common.\nWe at Dhaka Event Planner believe that it's our\nresponsibility as an event management company to\ndeliver our services to our clients with reliability,\ndependability and creativity. We want you to remember\nthe events that we get to manage for you. We thrive to\nmix and match the best styles and themes for your\nevents. With so many events happening in Dhaka and all\nover Bangladesh, we believe that it's very important that\nyou stand out with your events as our client.\n\nAn event itself is an opportunity to display your creation\npositively and inspire people to take positive actions.\nDhaka Event Planner helps you achieve your event's\ndesired objectives and a little bit extra to make it an\nimmersive experience for all the attendees. We start by\nlearning who you are and what your objectives are for the\nevent. This enables us to tailor your event for the best\nexperience of all parties involved.\n\nBangladesh, with Dhaka at the heart of it, is a country that\nhas become a wonder for quite a few people with its rapid\neconomic growth in the last 10 years or so. Companies,\norganizations and various businesses have become the\ndriving force for the economic development of this\ncountry. Both corporate and personal event management\nservices in Dhaka, Chittagong, Cox's Bazar and in the\nwhole Bangladesh is becoming more and more common.\nWe at Dhaka Event Planner believe that it's our\nresponsibility as an event management company to\ndeliver our services to our clients with reliability,",
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
