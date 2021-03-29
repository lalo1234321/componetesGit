
// mateapp

import 'package:flutter/material.dart';
import 'package:jsonproject/pages/alert_page.dart';
import 'package:jsonproject/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'alert': (BuildContext context) => AlertPage()
      },
    );
  }
}