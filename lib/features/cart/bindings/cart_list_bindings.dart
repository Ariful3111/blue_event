import 'package:blue_event/features/cart/controller/cart_list_controller.dart';
import 'package:get/get.dart';

class CartListBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartListController>(() => CartListController());
  }
}
