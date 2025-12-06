
import 'package:blue_event/features/home/controller/notification_controller.dart';
import 'package:get/get.dart';

class NotificationBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<NotificationController>(()=>NotificationController());
  }
}