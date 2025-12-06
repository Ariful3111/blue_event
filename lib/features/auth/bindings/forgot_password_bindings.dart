import 'package:blue_event/features/auth/controller/forgot_password_controller.dart';
import 'package:get/get.dart';

class ForgotPasswordBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordController>(() => ForgotPasswordController());
  }
}
