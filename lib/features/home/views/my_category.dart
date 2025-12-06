import 'package:blue_event/core/routes/app_routes.dart';
import 'package:blue_event/features/home/controller/my_category_controller.dart';
import 'package:blue_event/features/home/views/my_drawer.dart';
import 'package:blue_event/features/home/widgets/category_container.dart';
import 'package:blue_event/features/home/widgets/click_search.dart';
import 'package:blue_event/features/home/widgets/custom_appbar.dart';
import 'package:blue_event/shared/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyCategory extends StatelessWidget {
  const MyCategory({super.key});

  @override
  Widget build(BuildContext context) {
    MyCategoryController myCategoryController = Get.find();
    return Scaffold(
      drawer: MyDrawer(),
      body: CustomContainer(
        padding: EdgeInsets.only(left: 10).w,
        widget: ListView(
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
             return  ClickSearch(
                      title: "Category",
                      textEditingController:
                          myCategoryController.searchController, onTap: () { myCategoryController.toggleSearch(); }, isSearch: myCategoryController.isSearch.value,
                    );
            }),
            SizedBox(height: 8.h),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: myCategoryController.categoryList.length,
              itemBuilder: (context, index) {
                return CategoryContainer(
                  title: myCategoryController.categoryList[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
