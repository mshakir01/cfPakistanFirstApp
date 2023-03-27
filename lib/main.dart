import 'package:first_app/third_month/stack_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(
      ScreenUtilInit(
          designSize:const Size(360, 800),
          splitScreenMode: true,
          minTextAdapt: true,
          builder: (BuildContext context,Widget? child) {
        return MyApp();
      }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StackScreen(),
    );
  }
}

