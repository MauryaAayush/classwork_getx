
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body:  Obx(
        () => ListView.builder(
          shrinkWrap: true,
          itemCount: controller.userList.length,
          itemBuilder: (context, index) => ListTile(
            leading:
            Image.memory(controller.userList[index].photo!),
            title: Text(controller.userList[index].name),
            trailing: Text(controller.userList[index].age.toString()),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openBox(context, controller);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

void openBox(BuildContext context,HomeController controller) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              onPressed: () async {
                ImagePicker imagePicker = ImagePicker();
                XFile? xFile =
                    await imagePicker.pickImage(source: ImageSource.camera);
                img = await xFile!.readAsBytes();
              },
              icon: Icon(Icons.photo)),
          TextField(
            controller: txtName,
          ),
          TextField(
            controller: txtage,
          ),

        ],
      ),
      actions: [
        TextButton(onPressed: () {
          Navigator.pop(context);
          controller.addUser(txtName.text, int.parse(txtage.text), img!);
        }, child: const Text('Save'))
      ],
    ),
  );
}

TextEditingController txtName = TextEditingController();
TextEditingController txtage = TextEditingController();

Uint8List? img;

