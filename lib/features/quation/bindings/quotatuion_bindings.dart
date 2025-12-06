import 'package:blue_event/features/quation/controller/quotation_controller.dart';
import 'package:get/get.dart';

class QuotatuionBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<QuotationController>(()=> QuotationController());
  }
}