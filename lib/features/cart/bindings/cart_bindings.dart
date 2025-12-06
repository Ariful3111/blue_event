import 'package:blue_event/features/cart/controller/cart_controller.dart';
import 'package:get/get.dart';

class CartBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartController>(() => CartController());
  }
}
