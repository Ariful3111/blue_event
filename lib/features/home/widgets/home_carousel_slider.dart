import 'package:carousel_slider/carousel_slider.dart';
import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/features/home/controller/carousel_controller.dart';
import 'package:blue_event/features/home/widgets/home_top_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeCarouselSlider extends StatelessWidget {
  final List imagelist;
  const HomeCarouselSlider({super.key, required this.imagelist});
  static MycarouselController mycarouselController = Get.find();
  @override
  Widget build(BuildContext context) {
    //MycarouselController mycarouselController = Get.find();
    //List sliderlist = ImagesPath.homebannerList;
    return Column(
      children: [
        CarouselSlider(
          items: imagelist
              .map((image) => HomeTopBanner(image:image))
              .toList(),

          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1,
            height: 159.h,
            onPageChanged: (index, _) {
              return mycarouselController.updatecarouselIndex(index);
            },
          ),
        ),
        SizedBox(height: 10.h),

        Obx(() {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < imagelist.length; i++)
                Container(
                  height: 10.h,
                  width: 10.w,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: mycarouselController.carouselIndex.value == i
                        ? AppColors.buttonColor
                        : Color(0xFFBEBEBE),
                  ),
                ),
            ],
          );
        }),
      ],
    );
  }
}
