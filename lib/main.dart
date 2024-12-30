import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/31_curriculum.dart';
import 'package:flutter_application_3/screens/32_reviews.dart';
import 'package:flutter_application_3/screens/pageview.dart';




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
      home:ReviewsScreen(),
    );
  }
}




