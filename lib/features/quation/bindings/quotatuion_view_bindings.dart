
import 'package:blue_event/features/quation/controller/quotation_view_controller.dart';
import 'package:get/get.dart';

class QuotatuionViewBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>QuotatuionViewController());
  }
}