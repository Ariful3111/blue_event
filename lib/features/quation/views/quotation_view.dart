import 'package:blue_event/core/routes/app_routes.dart';
import 'package:blue_event/features/quation/widgets/quotation_button.dart';
import 'package:blue_event/features/quation/widgets/quotation_view_container.dart';
import 'package:blue_event/shared/widgets/custom_container.dart';
import 'package:blue_event/shared/widgets/custom_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class QuotatuionView extends StatelessWidget {
  const QuotatuionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContainer(
        widget: SafeArea(
          child: Column(
            children: [
              CustomTop(title: "Quotation"),
              SizedBox(height: 44.h),
              QuotationViewContainer(),
              SizedBox(height: 78.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35).r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    QuotationButton(text: "Negotiate", onPressed: (){}, height: 50.h, width: 140.w,color: Color(0xFF5DC9F4),),
                    QuotationButton(text: "Confirm", onPressed: (){Get.toNamed(AppRoutes.quotationConfirm);}, height: 50.h, width: 140.w,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
