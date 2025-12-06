import 'package:blue_event/core/constants/colors.dart';
import 'package:blue_event/features/chat/controller/chat_controller.dart';
import 'package:blue_event/features/chat/widgets/chat_field.dart';
import 'package:blue_event/features/chat/widgets/chat_head.dart';
import 'package:blue_event/features/chat/widgets/conversation.dart';
import 'package:blue_event/shared/widgets/custom_container.dart';
import 'package:blue_event/shared/widgets/custom_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    //ConversationController conversationController = Get.find();
    ChatController chatController = Get.find();
    return Scaffold(
      body: CustomContainer(
        widget: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomTop(title: "Chat"),
              SizedBox(height: 15.h),
              ChatHead(),
              SizedBox(height: 7.h),
              Container(
                width: 350.w,
                decoration: BoxDecoration(
                  border: BoxBorder.all(
                    width: 2.5.r,
                    color: AppColors.primaryColorDark.withValues(alpha: 0.05),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8).r,
                      child: Conversation(isMe: index.isEven ? true : false),
                    );
                  },
                ),
              ),

              ChatField(chattextController: chatController.chatController),
            ],
          ),
        ),
      ),
    );
  }
}
