import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/images_path.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget ? widget;
  final EdgeInsetsGeometry? padding;
  const CustomContainer({super.key, this.widget, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: MediaQuery.widthOf(context),
      height: MediaQuery.heightOf(context),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImagesPath.homeDecoration),
          fit: BoxFit.fill,
        ),
        gradient: AppColors.homeBackgroundColor,
      ),
      child: widget,
    );
  }
}
