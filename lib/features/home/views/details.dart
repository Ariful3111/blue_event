import 'package:blue_event/core/constants/images_path.dart';
import 'package:blue_event/features/home/controller/related_service_controller.dart';

import 'package:blue_event/features/home/widgets/custom_tab_container.dart';
import 'package:blue_event/features/home/widgets/event_row.dart';
import 'package:blue_event/features/home/widgets/home_carousel_slider.dart';
import 'package:blue_event/features/home/widgets/related_service.dart';
import 'package:blue_event/shared/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatelessWidget {
  const Details({super.key});
  @override
  Widget build(BuildContext context) {
    
    RelatedServiceController relatedServiceController  = Get.find();
    
    return Scaffold(
      body: CustomContainer(
        widget: SafeArea(
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              HomeCarouselSlider(imagelist: ImagesPath.detailslist),
              SizedBox(height: 10.h,),
              EventRow(),
              SizedBox(height: 10.h,),
              CustomTabContainer(),
              SizedBox(height: 20.h,),
              Padding(
                padding: EdgeInsets.only(left:18.w),
                child: Text("Related Service",
                style: GoogleFonts.kanit(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400
                ),
                ),
              ),
              SizedBox(height: 10.h,),
              SizedBox(
                height: 220.h,
                width: MediaQuery.widthOf(context),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: relatedServiceController.relatedServiceList.length,
                  itemBuilder: (context,index){
                   final title = relatedServiceController.relatedServiceList[index];
                    return RelatedService(title: title, onFavorite: (){
                      relatedServiceController.toggleIsfavoriteList(index);
                    }, onCart: (){
                      relatedServiceController.toggleIscartList(index);
                    }, controller: relatedServiceController, index: index);
                  }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
