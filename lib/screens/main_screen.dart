import 'package:application/screens/socio_club_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: 90.w,
          child: Image.asset(
            'lib/png/eagle_logo.png',
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      backgroundColor: Colors.black,
      body: const SocioClubBody(),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          items: _bottomNavigationBarItems),
    );
  }

  static final List<Widget> _bottomNavigationBarItems = [
    SizedBox(
      height: 30,
      child: Image.asset('lib/png/home.png'),
    ),
    SizedBox(
      height: 30,
      child: Image.asset('lib/png/globe.png'),
    ),
    SizedBox(
      height: 30,
      child: Image.asset('lib/png/trophy.png'),
    ),
    SizedBox(
      height: 30,
      child: Image.asset('lib/png/incognito.png'),
    ),
    SizedBox(
      height: 30,
      child: Image.asset('lib/png/gamepad.png'),
    ),
  ];
}
