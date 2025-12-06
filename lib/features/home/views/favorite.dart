import 'package:blue_event/core/routes/app_routes.dart';
import 'package:blue_event/features/home/controller/favorite_controller.dart';
import 'package:blue_event/features/home/views/my_drawer.dart';
import 'package:blue_event/features/home/widgets/click_search.dart';

import 'package:blue_event/features/home/widgets/custom_appbar.dart';
import 'package:blue_event/features/home/widgets/favorite_items.dart';
import 'package:blue_event/shared/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    FavoriteController favoriteController = Get.find();
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
                          title: "Favourite",
                          textEditingController:
                              favoriteController.searchController,
                          onTap: () {
                            favoriteController.toggleSearch();
                          },
                          isSearch: favoriteController.isSearch.value,
                        );
                      }),
                      SizedBox(height: 8.h),
                    ],
                  ),
                ),
                SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final item = favoriteController.favoriteItemsList[index];
                    return FavoriteItems(
                      rightPadding: 0,
                      title: item,
                      onFavorite: () {
                        favoriteController.toggleIsfavoriteList(index);
                      },
                      onCart: () {
                        favoriteController.toggleIscartList(index);
                      },
                      controller: favoriteController,
                      index: index,
                    );
                  }, childCount: favoriteController.favoriteItemsList.length),
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
