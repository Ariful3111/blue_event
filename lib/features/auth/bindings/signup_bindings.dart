import 'package:blue_event/features/auth/controller/signup_controller.dart';
import 'package:blue_event/features/auth/repositories/register_repo.dart';
import 'package:get/get.dart';

class SignupBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterRepository(postWithResponse: Get.find()));
    Get.lazyPut<SignupController>(
      () => SignupController(registerRepository: Get.find()),
    );
  }
}
