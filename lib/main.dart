import 'package:first_project/screens/RegisterScreen.dart';
import 'package:first_project/screens/loginpage.dart';
import 'package:first_project/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  )
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Splashscreen(),
    ),
  );
}
