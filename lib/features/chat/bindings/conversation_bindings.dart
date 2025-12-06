import 'package:blue_event/features/chat/controller/conversation_controller.dart';
import 'package:get/get.dart';

class ConversationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConversationController());
  }
}
