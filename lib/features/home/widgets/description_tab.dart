
import 'package:blue_event/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionTab extends StatelessWidget {
  const DescriptionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10).r,
      child: ListView(
        children: [
          CustomText.descriptionText(
            title:
                "The ideal place for those looking for a luxurious and\ntranquil holiday experience with stunning sea views.\nEvent management applies to a wide range of events, including:\n. Conferences and conventions\n. Trade shows and exhibitions\n. Ceremonies and parties\n. Weddings and formal celebrations\n. Concerts and festivals\n. Corporate events and training seminars\n. Trade shows and exhibitions\nCreating and adhering to a budget, controlling\ncosts, and managing vendor negotiations.Sourcing\nand managing all necessary vendors, from caterers\nand AV technicians to venue staff, and coordinating\nequipment and travel.\n. The ideal place for those looking for a luxurious and\ntranquil holiday experience with stunning sea views. Event management applies to a wide",
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
