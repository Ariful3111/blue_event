import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController with GetTickerProviderStateMixin{
  late TabController tabController;
  RxList<int> isfavoriteList = <int>[].obs;
  RxList<int> iscartList = <int>[].obs;

  @override
  void onInit() {
    tabController = TabController(length: 3, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  void toggleIsfavoriteList(int index) {
    if (isfavoriteList.contains(index)) {
      isfavoriteList.remove(index);
    } else {
      isfavoriteList.add(index);
    }
  }

  void toggleIscartList(int index) {
    Get.snackbar(
      "ADD To Cart",
      "You'r Selected Item Successfully Added to Cart",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
