import 'package:blue_event/features/home/controller/wedding_controller.dart';
import 'package:get/get.dart';

class WeddingBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<WeddingController>(()=>WeddingController());
  }
}