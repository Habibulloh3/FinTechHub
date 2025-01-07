import 'package:flutter/material.dart';
import 'package:flutter_application_3/fillprofile.dart';
import 'package:flutter_application_3/firstscreen.dart';
import 'package:flutter_application_3/loginpage.dart';
import 'package:flutter_application_3/pageview.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',debugShowCheckedModeBanner:false,
      theme: ThemeData(
        fontFamily:"Concert",
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(textStyle: TextStyle(fontFamily: "Concert")))
      ),
      home:Pageview(),
    );
  }
}




