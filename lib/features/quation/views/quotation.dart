import 'package:blue_event/features/quation/widgets/quotation_container.dart';
import 'package:blue_event/shared/widgets/custom_container.dart';
import 'package:blue_event/shared/widgets/custom_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Quotation extends StatelessWidget {
  const Quotation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContainer(
        widget: SafeArea(
          child: Column(
            children: [
              CustomTop(title: "Quotation"),
              SizedBox(height: 42.h),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10).h,
                      child: QuotationContainer(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
