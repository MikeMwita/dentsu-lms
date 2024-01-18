import 'package:dentsulms/View/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DentsuLMS',
      theme: ThemeData(),
      home: DesktopLoginView(),
    );
  }
}
