import 'package:application/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Application',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: const MainScreen(),
      ),
    );
  }
}
