import 'package:blue_event/core/constants/icons_path.dart';
import 'package:blue_event/shared/widgets/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearch extends StatelessWidget {
  final TextEditingController textEditingController;
  final EdgeInsetsGeometry? padding;
  const CustomSearch({
    super.key,
    required this.textEditingController,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(left: 15, right: 40).r,
      child: CustomTextFromFiled(
        height: 52.h,
        width: 327.w,
        controller: textEditingController,
        hintText: "Search",
        prefixIcon: Image.asset(
          IconsPath.searchIcon,
          height: 15.h,
          width: 15.w,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
