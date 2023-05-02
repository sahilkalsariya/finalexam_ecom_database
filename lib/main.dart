import 'package:finalexam_ecom_database/screen/cartpage.dart';
import 'package:finalexam_ecom_database/screen/homepage.dart';
import 'package:finalexam_ecom_database/screen/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splashscreen',
    routes: {
      'splashscreen': (context) => splashscreen(),
      '/': (context) => homepage(),
      'cartpage': (context) => Cartpage(),
    },
  ));
}
