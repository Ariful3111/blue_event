
import 'package:blue_event/features/home/controller/carousel_controller.dart';
import 'package:get/get.dart';

class MycarouselBinding implements Bindings{
  @override
  void dependencies(){
    Get.lazyPut<MycarouselController>(()=>MycarouselController());
  }
}