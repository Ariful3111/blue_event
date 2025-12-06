
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HoludController extends GetxController {
  TextEditingController searchController = TextEditingController();
  final List<String> holudList = [
    "Stage",
    "Photography",
    "Venue Booking",
    "Decoration",
    "Lighting",
    "Catering",
    "Music",
    "Flowers",
  ];
  RxList<int> isfavoriteList = <int>[].obs;
  RxList<int> iscartList = <int>[].obs;


  void toggleIsfavoriteList(int index) {
    if (isfavoriteList.contains(index)) {
      isfavoriteList.remove(index);
    } else {
      isfavoriteList.add(index);
    }
  }

  void toggleIscartList(int index) {
    if(iscartList.contains(index)){
      iscartList.remove(index);
    }else{
      iscartList.add(index);
    }
    Get.snackbar(
      "ADD To Cart",
      "You'r Selected Item Successfully Added to Cart",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
  RxBool isSearch=false.obs;
 
  void toggleSearch(){
    isSearch.value=!isSearch.value;
  }
}
