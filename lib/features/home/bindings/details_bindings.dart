
import 'package:blue_event/features/home/controller/details_controller.dart';
import 'package:get/get.dart';

class DetailsBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(()=>DetailsController());
  }
}