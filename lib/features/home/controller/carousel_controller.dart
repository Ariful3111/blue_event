import 'package:get/get.dart';

class MycarouselController extends GetxController{
  final carouselIndex = 0.obs;

  void updatecarouselIndex(index) {
    carouselIndex.value = index;
  }
}