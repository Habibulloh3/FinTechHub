import 'package:flutter/material.dart';
import 'package:flutter_application_3/pageview.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();

    
    Future.delayed(const Duration(seconds: 3), ()async {
      
      Navigator.push(
       context,
        MaterialPageRoute(builder: (context) =>  Pageview()),
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          'assets/images/01_LAUNCHING@2x.png',
          fit: BoxFit.cover, 
        ),
      ),
    );
  }
}
