import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:momfirst_comingsoon_page/Responsive/responsive_layout.dart';
import 'package:momfirst_comingsoon_page/Screens/desktop_screen.dart';
import 'package:momfirst_comingsoon_page/Screens/mobile_screen.dart';
import 'package:momfirst_comingsoon_page/Screens/tab_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
         return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ResponsiveLayout(mobileScaffold: MobileScreen(), tabletScaffold: TabScreen(), desktopScaffold: DesktopScreen(),),
      );
      },
     
    );
  }
}

