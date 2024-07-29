import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Day1/views/homeScreen.dart';
import 'Day2/views/cartsScreen.dart';
import 'new_database/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => HomeScreen(),)
      ],
     // home: Cartsscreen(),

    );
  }
}


// What is Database?
// Data : Collection of Information ->
// Database -> collection of data stored in systematic way.
// List l1 = [];
// Map m1 = {};


// Local Database : your device;
// SQL : Structure Query Language;
// CRUD -> Create Read Update Delete
// Query -> commands -
// Tabular form - > Table form;
// Students data ->

// sqlite package : 


// Cloud Database - online Database
