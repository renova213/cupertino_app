import 'package:cupertino_widget/presentation/widgets/botnavbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 690),
      builder: (context, _) => const CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: BotNavBar(),
      ),
    );
  }
}
