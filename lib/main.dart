import 'package:flutter/material.dart';
import 'package:flutter_application_3/.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily:"Concert",
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(textStyle: TextStyle(fontFamily: "Concert")))
      ),
      home:MyWidget(),
    );
  }
}




