
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileEditController extends GetxController{
  RxString profileImagePath = "".obs; 
  ImagePicker picker = ImagePicker();
  void updateProfile(ImageSource imageSource)async{
    final  pickedFile = await picker.pickImage(source: imageSource);
    if(pickedFile !=null){
      profileImagePath.value= pickedFile.path.toString();
    }else{
      Get.snackbar("Error", "No Image Selected",snackPosition: SnackPosition.BOTTOM);
    }
  }
}