import 'package:blue_event/features/chat/controller/chat_controller.dart';
import 'package:get/get.dart';

class ChatBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatController());
  }
}
