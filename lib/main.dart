import 'package:flutter/material.dart';
import 'package:flutter_travel_app_ui_design/screen/home_screen.dart';
import 'package:flutter_travel_app_ui_design/screen/selected_place_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
