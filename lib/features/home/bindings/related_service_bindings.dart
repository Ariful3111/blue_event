
import 'package:blue_event/features/home/controller/related_service_controller.dart';
import 'package:get/get.dart';

class RelatedServiceBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<RelatedServiceController>(()=>RelatedServiceController());
  }
}