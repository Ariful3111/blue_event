
import 'package:blue_event/features/home/controller/main_home_controller.dart';
import 'package:get/get.dart';

class MainHomeBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MainHomeController>(()=>MainHomeController());
  }
}