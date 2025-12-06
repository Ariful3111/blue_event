import 'package:blue_event/features/profile/controller/update_password_controller.dart';
import 'package:get/get.dart';

class UpdatePasswordBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>UpdatePasswordController());
  }
}