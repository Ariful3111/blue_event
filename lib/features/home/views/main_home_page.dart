import 'package:blue_event/features/home/controller/main_home_controller.dart';
import 'package:blue_event/features/home/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MainHomeController mainHomeController = Get.find();
    return Obx(() {
      return Scaffold(
        body: mainHomeController.pageList[mainHomeController.selectedIndex.value],
        bottomNavigationBar: Navbar(),
      );
    });
  }
}
