import 'package:blue_event/core/constants/images_path.dart';
import 'package:blue_event/core/routes/app_routes.dart';
import 'package:blue_event/features/home/controller/holud_controller.dart';
import 'package:blue_event/features/home/controller/home_controller.dart';
import 'package:blue_event/features/home/controller/my_category_controller.dart';
import 'package:blue_event/features/home/controller/wedding_controller.dart';
import 'package:blue_event/features/home/views/my_drawer.dart';
import 'package:blue_event/features/home/widgets/category_container.dart';
import 'package:blue_event/features/home/widgets/custom_row.dart';
import 'package:blue_event/features/home/widgets/holud_container.dart';
import 'package:blue_event/features/home/widgets/home_carousel_slider.dart';
import 'package:blue_event/features/home/widgets/home_container.dart';
import 'package:blue_event/features/home/widgets/custom_search.dart';
import 'package:blue_event/features/home/widgets/wedding_container.dart';
import 'package:blue_event/features/home/widgets/custom_appbar.dart';
import 'package:blue_event/shared/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    WeddingController weddingController = Get.find();
    HoludController holudController = Get.find();
    MyCategoryController categoryController = Get.find();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: MyDrawer(),
      body: Stack(
        children: [
          const Positioned.fill(child: CustomContainer()),
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppbar(
                    favorite: () {
                      Get.toNamed(AppRoutes.favorite);
                    },
                    notification: () {
                      Get.toNamed(AppRoutes.notification);
                    },
                  ),
                  SizedBox(height: 17.h),

                  CustomSearch(
                    textEditingController: homeController.searchController,
                  ),
                  SizedBox(height: 23.h),
                  HomeCarouselSlider(imagelist: ImagesPath.homebannerList),
                  SizedBox(height: 23.h),
                  CustomRow(
                    data1: "Category",
                    data2: "See all >",
                    onTap: () {
                      Get.toNamed(AppRoutes.myCategory);
                    },
                  ),
                  SizedBox(height: 22.h),
                  SizedBox(
                    height: 190.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryController.categoryList.length,
                      itemBuilder: (context, index) {
                        return CategoryContainer(
                          title: categoryController.categoryList[index],
                        );
                      },
                    ),
                  ),

                  SizedBox(
                    height: 190.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryController.categoryList.length,
                      itemBuilder: (context, index) {
                        return CategoryContainer(
                          title: categoryController.categoryList[index],
                        );
                      },
                    ),
                  ),

                  CustomRow(
                    data1: "Wedding",
                    data2: "See all >",
                    onTap: () {
                      Get.toNamed(AppRoutes.wedding);
                    },
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    height: 220.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: weddingController.weddingList.length,
                      itemBuilder: (context, index) {
                        final item = weddingController.weddingList[index];
                        return WeddingContainer(
                          title: item,

                          onFavorite: () {
                            weddingController.toggleIsfavoriteList(index);
                          },
                          onCart: () {
                            weddingController.toggleIscartList(index);
                          },
                          controller: weddingController,
                          index: index,
                        );
                      },
                    ),
                  ),

                  CustomRow(
                    data1: "Holud",
                    data2: "See all >",
                    onTap: () {
                      Get.toNamed(AppRoutes.holud);
                    },
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    height: 220.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: holudController.holudList.length,
                      itemBuilder: (context, index) {
                        final item = holudController.holudList[index];
                        return HoludContainer(
                          title: item,
                          onFavorite: () {
                            holudController.toggleIsfavoriteList(index);
                          },
                          onCart: () {
                            holudController.toggleIscartList(index);
                          },
                          controller: holudController,
                          index: index,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10.h),
                  HomeContainer(),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
