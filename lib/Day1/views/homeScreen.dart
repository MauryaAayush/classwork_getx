import 'package:classwork_getx/Day1/controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homescreen extends StatelessWidget {
   Homescreen({super.key});

  final Homecontroller homecontroller = Get.put(Homecontroller());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Getx Counter'),
      ),
      
      floatingActionButton: FloatingActionButton(
          
          onPressed: homecontroller.increment,
        child: Icon(Icons.add),
      
      ),
   
      body: Center(
        child: Obx(()=> Text('Count : ${homecontroller.count}',style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600
          ),),
        ),
      ),
        
    );
  }
}
