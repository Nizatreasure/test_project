import 'package:flutter/material.dart';
import 'package:test_project/buttom_navbar.dart';
import 'package:test_project/homepage.dart';

class NavigatorHome extends StatefulWidget {
  const NavigatorHome({Key? key}) : super(key: key);

  @override
  State<NavigatorHome> createState() => _NavigatorHomeState();
}

class _NavigatorHomeState extends State<NavigatorHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: const [Home(), BottomNavBar()],
        ),
      ),
    );
  }
}
