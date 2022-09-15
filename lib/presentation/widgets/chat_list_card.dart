import 'package:cupertino_widget/model/chat_detail_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatListCard extends StatelessWidget {
  final List<ChatDetailModel> chatList;
  const ChatListCard({super.key, required this.chatList});

  @override
  Widget build(BuildContext context) {
    int a = 0;

    return ListView.builder(
      itemCount: chatList.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 55.h,
              width: 55.w,
              child: CircleAvatar(
                backgroundImage: NetworkImage(chatList[index].profile),
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 50.h,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                chatList[index].name,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Text(
                                chatList[index].message,
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              chatList[index].time,
                              style: TextStyle(fontSize: 12.sp),
                            ),
                            CircleAvatar(
                              backgroundColor: CupertinoColors.activeBlue,
                              radius: 8,
                              child: Text(
                                "${a++}",
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
