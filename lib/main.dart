//import 'package:app_travel/Screens/calendar_date_screen.dart';
//import 'package:app_travel/Screens/effective_%20travels_screen.dart';
//import 'package:app_travel/Screens/home_screen.dart';
//import 'package:app_travel/Screens/image_picker_screen.dart';
//import 'package:app_travel/Screens/login_screen.dart';
//import 'package:app_travel/Screens/offers_screen.dart';
//import 'package:app_travel/Screens/online_payment_screen3.dart';
//import 'package:app_travel/Screens/password_screen.dart';
//import 'package:app_travel/Screens/personal_page5.dart';
//import 'package:app_travel/Screens/request_delivery_screen11.dart';
//import 'package:app_travel/Screens/sign_in_screen.dart';
//mport 'package:app_travel/Screens/my_requests_screen.dart';
import 'package:flutter/material.dart';
//import 'Screens/connect_with_screen.dart';
//import 'package:app_travel/Screens/cart_screen.dart';
//import 'package:app_travel/Screens/calendar_date_screen.dart';
import 'package:twsel/Screens/main_screen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MainScreen(),
    );
  }
}



