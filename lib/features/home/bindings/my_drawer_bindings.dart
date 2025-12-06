
import 'package:blue_event/features/home/controller/my_drawer_controller.dart';
import 'package:get/get.dart';

class MyDrawerBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyDrawerController());
  }
}
