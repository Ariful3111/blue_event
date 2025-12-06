import 'package:blue_event/features/auth/controller/create_new%20_password_controller.dart';
import 'package:get/get.dart';

class CreateNewPasswordBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateNewPasswordController>(
      () => CreateNewPasswordController(),
    );
  }
}
