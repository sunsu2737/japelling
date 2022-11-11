import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:japelling/screen/auto_screen.dart';
import 'package:japelling/screen/check_screen.dart';
import 'package:japelling/screen/home_screen.dart';
import 'package:japelling/screen/infinity_screen.dart';
import 'package:japelling/screen/table_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080,1920),
      builder: (context, child) {
      return MaterialApp(
        title: 'Japelling',
        routes: {
          "/": (context) => HomeScreen(),
          "/table": (context) => TableScreen(),
          "/infinity": (context) => InfinityScreen(),
          "/check": (context) => CheckScreen(),
          "/auto": (context) => AutoScreen()
        },
        initialRoute: '/',
      );
    });
  }
}
