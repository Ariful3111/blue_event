import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCategoryController extends GetxController{
  final List<String> categoryList = [
    "Stage",
    "Photography",
    "Venue Booking",
    "Decoration",
    "Lighting",
    "Catering",
    "Music",
    "Flowers",
  ];
  RxBool isSearch=false.obs;
  TextEditingController searchController = TextEditingController();
  void toggleSearch(){
    isSearch.value=!isSearch.value;
  }
}