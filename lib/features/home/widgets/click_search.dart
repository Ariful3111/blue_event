import 'package:blue_event/core/constants/icons_path.dart';
import 'package:blue_event/features/home/widgets/custom_search.dart';
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClickSearch extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isSearch;
  final TextEditingController textEditingController;
  const ClickSearch({
    super.key,
    required this.title,
    required this.textEditingController,
    required this.onTap,
    required this.isSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText.titleText(title: title),
        AnimatedContainer(
          duration: Duration(milliseconds: 1000),
          curve: Curves.linearToEaseOut,
          height: 40.h,
          width: isSearch ? 220.w : 0,
          margin: EdgeInsets.symmetric(horizontal: 10).w,
          child: AnimatedSlide(
            duration: Duration(milliseconds: 1000),
            offset: isSearch ? Offset.zero : Offset(1, 0),
            curve: Curves.easeInOut,
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 1000),
              opacity: isSearch ? 1.0 : 0.0,
              child: CustomSearch(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                textEditingController: textEditingController,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: InkWell(
            onTap: onTap,
            child: Image.asset(
              IconsPath.categorySearch,
              height: 30.h,
              width: 30.w,
            ),
          ),
        ),
      ],
    );
  }
}
