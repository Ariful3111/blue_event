import 'package:blue_event/core/routes/app_routes.dart';
import 'package:blue_event/features/quation/widgets/confirm_container.dart';
import 'package:blue_event/features/quation/widgets/quotation_button.dart';
import 'package:blue_event/shared/widgets/custom_container.dart';
import 'package:blue_event/shared/widgets/custom_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class QuotatuionConfirmation extends StatelessWidget {
  const QuotatuionConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContainer(
        widget: SafeArea(
          child: Column(
            children: [
              CustomTop(title: "Quotation"),
              SizedBox(height: 157.h,),
              ConfirmContainer(),
              SizedBox(height: 50.h,),
              QuotationButton(text: "Okay", onPressed: (){Get.toNamed(AppRoutes.mainHome);}, height: 50.h, width: 140.w)
            ],
          ),
        ),
      ),
    );
  }
}