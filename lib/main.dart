import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_project/navigator_home.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white.withOpacity(0.001),
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crenet',
      theme: ThemeData(fontFamily: 'ProximaSoft'),
      debugShowCheckedModeBanner: false,
      home: const NavigatorHome(),
    );
  }
}
