import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Day1/views/homeScreen.dart';
import 'Day2/views/cartsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     home: Cartsscreen(),

    );
  }
}


