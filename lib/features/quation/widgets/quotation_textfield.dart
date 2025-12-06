import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/icons_path.dart';
import 'package:blue_event/features/quation/controller/get_quotation_controller.dart';
import 'package:blue_event/shared/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class QuotationTextfield extends StatelessWidget {
  const QuotationTextfield({super.key});
  @override
  Widget build(BuildContext context) {
    GetQuotationController getQuotationController = Get.find();
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 50.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          quotatuionText(title: 'Name', spantext: '*'),
          SizedBox(height: 13.h),
          CustomTextFromFiled(
            controller: getQuotationController.nameController,
            validator: getQuotationController.nameValidation,
            hintText: "Imam Sha",
          ),
          SizedBox(height: 13.h),
          quotatuionText(title: 'Evaent Date', spantext: '*'),
          SizedBox(height: 13.h),
          Obx((){
            return CustomTextFromFiled(
            controller: getQuotationController.datetController,
            readOnly: true,
            keyboardType: TextInputType.datetime,
            suffixIcon: InkWell(
              onTap: () {
                getQuotationController.pickDate(context);
              },
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(IconsPath.calenderIcon,color: Color(0xFF0880AE),height: 24.h,width: 26.h,),
              )
            ),
            hintText:getQuotationController.selectDate.value == null? "02-November-2025":"${getQuotationController.selectDate.value!.day}-${getQuotationController.selectDate.value!.month}-${getQuotationController.selectDate.value!.year}",
          );
          }),
          SizedBox(height: 13.h),
          quotatuionText(title: 'Phone', spantext: '*'),
          SizedBox(height: 13.h),
          CustomTextFromFiled(
            controller: getQuotationController.phoneController,
            
            keyboardType: TextInputType.phone,
            hintText: "01776*********",
          ),
          SizedBox(height: 13.h),
          quotatuionText(
            title: 'Your Budget',
            spantext: ' (Optional)',
            color: AppColors.primaryColorDark,
          ),
          SizedBox(height: 13.h),
          CustomTextFromFiled(
            hintText: "25000000",
            controller: getQuotationController.budgetController,
          ),
          SizedBox(height: 13.h),
          quotatuionText(title: 'Location', spantext: '*'),
          SizedBox(height: 13.h),
          CustomTextFromFiled(
            hintText: "Mirpur 10, Dhaka, Bangladesh",
            controller: getQuotationController.locationController,
          ),
        ],
      ),
    );
  }

  Widget quotatuionText({
    required String title,
    required String spantext,
    Color? color,
  }) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 10),
      child: RichText(
        text: TextSpan(
          text: title,
          style: GoogleFonts.poppins(
            color: AppColors.primaryColorDark,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
          children: [
            TextSpan(
              text: spantext,
              style: GoogleFonts.poppins(
                color: color ?? Color(0xFFF40F6F),
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
