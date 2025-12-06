
import 'package:get/get.dart';

class CartListController extends GetxController{

  RxInt quantity = 1.obs;

  void increaseQuantity() {
    quantity.value++;
  }

  void decreaseQuantity() {
    if (quantity.value > 1) {
      quantity.value--;
    }
  }
  RxBool acceptTerms = false.obs;

  void toggleAcceptTerms(bool? value) {
    acceptTerms.value = value ?? true;
  }
}