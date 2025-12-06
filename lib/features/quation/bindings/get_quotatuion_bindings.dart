import 'package:blue_event/features/quation/controller/get_quotation_controller.dart';
import 'package:get/get.dart';

class GetQuotatuionBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<GetQuotationController>(()=> GetQuotationController());
  }
}