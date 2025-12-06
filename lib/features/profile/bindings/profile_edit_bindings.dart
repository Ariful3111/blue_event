import 'package:blue_event/features/profile/controller/profile_edit_controller.dart';
import 'package:get/get.dart';

class ProfileEditBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>ProfileEditController());
  }
}