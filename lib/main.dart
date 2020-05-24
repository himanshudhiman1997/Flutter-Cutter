import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cutter/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Color(0xFF5DCCC2)));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Cutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
