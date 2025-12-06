import 'package:blue_event/core/routes/app_routes.dart';
import 'package:blue_event/features/home/controller/holud_controller.dart';
import 'package:blue_event/features/home/views/my_drawer.dart';
import 'package:blue_event/features/home/widgets/click_search.dart';
import 'package:blue_event/features/home/widgets/custom_appbar.dart';
import 'package:blue_event/features/home/widgets/holud_container.dart';
import 'package:blue_event/shared/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Holud extends StatelessWidget {
  const Holud({super.key});

  @override
  Widget build(BuildContext context) {
    HoludController holudController = Get.find();

    return Scaffold(
      drawer: MyDrawer(),
      body: CustomContainer(
        widget: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10).r,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
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
                      SizedBox(height: 8.h),
                      Obx(() {
                        return ClickSearch(
                          title: "Holud",
                          textEditingController:
                              holudController.searchController,
                          onTap: () {
                            holudController.toggleSearch();
                          },
                          isSearch: holudController.isSearch.value,
                        );
                      }),
                      SizedBox(height: 8.h),
                    ],
                  ),
                ),
                SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final item = holudController.holudList[index];
                    return HoludContainer(
                      rightPadding: 0,
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
                  }, childCount: holudController.holudList.length),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.78,
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
