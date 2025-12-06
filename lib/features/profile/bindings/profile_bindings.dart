
import 'package:blue_event/features/profile/controller/profile_controller.dart';
import 'package:get/instance_manager.dart';

class ProfileBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>ProfileController());
  }
}