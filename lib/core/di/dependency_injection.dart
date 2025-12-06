import 'package:blue_event/data/networks/post_with_response.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DependencyInjection {
  static Future<void> init() async {
    await GetStorage.init();
    Get.lazyPut(() => PostWithResponse());
  }
}
