import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screens/add_card.dart';
import 'package:flutter_ecommerce_app/screens/doctors_page.dart';

import 'package:flutter_ecommerce_app/screens/payment_method.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Quicksand' ,),
      debugShowCheckedModeBanner: false,
      
      home: DoctorsPage()
      
    );
  }
}
