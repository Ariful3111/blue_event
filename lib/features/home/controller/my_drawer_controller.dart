
import 'package:blue_event/core/constants/images_path.dart';
import 'package:get/get.dart';

class MyDrawerController extends GetxController{
  RxBool isDrawer=false.obs;
  RxString userName= "Ariful Islam".obs;
  RxString email= "arifulislam@gmail.com".obs;
  RxString profileImage= ImagesPath.profileImage.obs;
  void openDrawer(){
    isDrawer.value= true; 
  }
  void closeDrawer(){
    isDrawer.value= false; 
  }
}