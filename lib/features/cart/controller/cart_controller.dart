import 'package:get/get.dart';

class CartController extends GetxController{
  final List<String> cartList = [
    "Stage",
    "Photography",
    "Venue Booking",
    "Decoration",
    "Lighting",
    "Catering",
    "Music",
    "Flowers",
  ];
  RxBool acceptTerms = false.obs;
  void toggleAcceptTerms(bool? value) {
    acceptTerms.value = value ?? true;
  }

} 