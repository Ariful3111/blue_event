import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetQuotationController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController datetController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController budgetController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  final storage = GetStorage();
  Rx<DateTime?> selectDate = Rx<DateTime?>(null);

  String? phoneValidation(String? value) {
    final text = (value ?? '').trim();
    if (text.isEmpty) {
      return "Phone number is required";
    }
    final RegExp phoneReg = RegExp(r'^(?:\+?88)?01[3-9]\d{8}$');
    if (phoneReg.hasMatch(text)) {
      return null;
    }
    return "Enter a valid phone number";
  }

  String? nameValidation(String? value) {
    final text = (value ?? '').trim();
    if (text.isEmpty) {
      return "Name is required";
    }
    if (text.length < 3) {
      return "Name must be at least 3 characters";
    }
    return null;
  }

  void pickDate(BuildContext context) async {
    final DateTime? pickDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
      initialDate: selectDate.value ?? DateTime.now(),
    );
    if (pickDate != null) {
      selectDate.value = pickDate;
      final formatted = "${pickDate.day}-${pickDate.month}-${pickDate.year}";
      datetController.text = formatted;
      storage.write("dob", formatted);
    } else {
      Get.snackbar(
        "Error",
        "Did Not Pick Any Date",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  void onInit() {
    super.onInit();
    String? saveDate = storage.read("dob");
    if (saveDate != null) {
      datetController.text = saveDate;
    }
  }
}
