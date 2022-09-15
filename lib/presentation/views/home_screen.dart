import 'package:cupertino_widget/common/items_chat.dart';
import 'package:cupertino_widget/presentation/widgets/chat_list_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    final chatList = itemsChat;

    return CupertinoPageScaffold(
      navigationBar: _navBar(),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Column(
            children: [
              SizedBox(
                height: 8.h,
              ),
              _buildSearchField(),
              SizedBox(
                height: 8.h,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CupertinoSlidingSegmentedControl<int>(
                  groupValue: groupValue,
                  children: {
                    0: _buildSegment("All Chats"),
                    1: _buildSegment("Work"),
                    2: _buildSegment("Unread"),
                    3: _buildSegment("Personal"),
                  },
                  onValueChanged: (value) {
                    setState(
                      () {
                        groupValue = value!;
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Expanded(
                child: ChatListCard(chatList: chatList),
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildSearchField() {
    return const CupertinoSearchTextField(
      placeholder: "Search...",
      prefixIcon: Icon(CupertinoIcons.search),
    );
  }

  _buildSegment(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 14.sp, color: CupertinoColors.systemGrey),
    );
  }

  CupertinoNavigationBar _navBar() {
    return CupertinoNavigationBar(
      middle: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Edit",
              style: TextStyle(
                  color: const Color.fromARGB(255, 97, 179, 247),
                  fontSize: 16.sp),
            ),
            const Text(
              "Chats",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
