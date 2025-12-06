
import 'package:blue_event/features/home/controller/holud_controller.dart';
import 'package:get/get.dart';

class HoludBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HoludController>(()=>HoludController());
  }
}