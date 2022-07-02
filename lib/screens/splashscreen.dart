import 'dart:async';
import 'package:first_project/screens/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _Splashscreen();
}

class _Splashscreen extends State<Splashscreen> {
  @override
 void initState() {
 super.initState();
 Timer(
    Duration(milliseconds: 5005),
    () => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => loginpage())));
}
  @override
  
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 165, 35),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            child: Lottie.network(
                  'https://assets8.lottiefiles.com/packages/lf20_x2oi05is.json'),
          ),
        ),
    );
  }
}