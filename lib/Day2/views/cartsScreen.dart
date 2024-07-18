import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/addcontroller.dart';

class Cartsscreen extends StatelessWidget {
   Cartsscreen({super.key});

  final CardController cardController = Get.put(CardController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      
      body: Obx(() => ListView.builder(
            itemCount: cardController.productList.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(cardController.productList[index]['title']),
              leading: Text(cardController.productList[index]['id'].toString()),
              trailing: IconButton(onPressed: () {
                cardController.removeData(index);
              }, icon: Icon(Icons.delete)),
            ),),
      ),
      
      floatingActionButton: FloatingActionButton(
        
        onPressed: () {

          int index = cardController.index.value;
          cardController.changeIndex();
        cardController.addToCart({
          'id' : index + 1,
          'title' : "Lenovo"
        });
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
