import 'package:get/get.dart';

class RelatedServiceController extends GetxController{
  final List<String> relatedServiceList = [
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
    Get.snackbar(
      "ADD To Cart",
      "You'r Selected Item Successfully Added to Cart",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}