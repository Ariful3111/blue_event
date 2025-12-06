import 'package:blue_event/core/routes/app_routes.dart';
import 'package:blue_event/features/cart/controller/cart_controller.dart';
import 'package:blue_event/features/cart/widgets/cart_list.dart';
import 'package:blue_event/features/quation/widgets/quotation_button.dart';
import 'package:blue_event/shared/widgets/custom_container.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.find();
    return Scaffold(
      body: CustomContainer(
        widget: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [CustomText.titleText(title: "Cart")],
              ),
              SizedBox(height: 15.h),
              Obx(() {
                return Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: cartController.acceptTerms.value,
                        onChanged: cartController.toggleAcceptTerms,
                      ),

                      CustomText.primaryText(
                        title: "Select All",
                        fontSize: 16.sp,
                      ),
                    ],
                  ),
                );
              }),
              SizedBox(height: 24.h),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10).h,
                      child: CartList(),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 7).h,
                child: QuotationButton(
                  text: 'Get Quotation',
                  onPressed: () {
                    Get.toNamed(AppRoutes.getquotation);
                  },
                  height: 42.h,
                  width: 341.w,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
