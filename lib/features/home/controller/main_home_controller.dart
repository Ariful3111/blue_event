import 'package:blue_event/features/cart/views/cart.dart';
import 'package:blue_event/features/chat/views/chat.dart';
import 'package:blue_event/features/home/views/home_page.dart';
import 'package:blue_event/features/profile/views/profile.dart';
import 'package:blue_event/features/quation/views/quotation.dart';
import 'package:get/get.dart';

class MainHomeController extends GetxController{
   RxList pageList = [HomePage(), Cart(), Quotation(), Chat(), Profile()].obs;
  RxInt selectedIndex=0.obs;
  void changeIndex(int index){
    selectedIndex.value = index;
  }
}