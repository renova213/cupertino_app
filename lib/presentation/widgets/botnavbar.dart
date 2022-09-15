import 'package:cupertino_widget/presentation/views/home_screen.dart';
import 'package:flutter/cupertino.dart';

class BotNavBar extends StatefulWidget {
  const BotNavBar({super.key});

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  final List<Widget> _tabs = const [
    HomeScreen(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_circle), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.phone), label: 'Settings'),
          ],
        ),
        tabBuilder: (BuildContext context, index) {
          return _tabs[index];
        },
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Settings"),
    );
  }
}
