
import 'package:blue_event/features/home/controller/my_category_controller.dart';
import 'package:get/get.dart';

class MyCategoryBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MyCategoryController>(()=>MyCategoryController());
  }
}