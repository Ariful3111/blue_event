import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/core/constants/icons_path.dart';
import 'package:blue_event/core/constants/images_path.dart';
import 'package:blue_event/features/home/widgets/video_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoTab extends StatelessWidget {
  const VideoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10).r,
      child: CustomScrollView(
        slivers: [
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              final image = ImagesPath.photoTabList[index];
              return Container(
                height: 155.h,
                width: 155.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      color: AppColors.primaryColorDark.withValues(alpha: 0.10),
                    ),
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return VideoDialog(image: image,);
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(50.0).r,
                    child: Image.asset(
                      IconsPath.videoIcon,
                      height: 35.h,
                      width: 35.w,
                    ),
                  ),
                ),
              );
            }, childCount: ImagesPath.photoTabList.length),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              childAspectRatio: 0.78,
            ),
          ),
        ],
      ),
    );
  }
}
