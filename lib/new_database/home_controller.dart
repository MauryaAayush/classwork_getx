

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'datadb_hellper.dart';
import 'home_model.dart';

class HomeController extends GetxController{

  RxList<User> userList = <User>[].obs;

  @override
  void onInit(){
    super.onInit();

    fetchUser();

  }

  Future<void> fetchUser() async {
    final data = await DbHelper.dbHelper.fetchData();
    userList.value = data.map((e) => User.fromMap(e),).toList();
  }

  void addUser(String name,int age,Uint8List photo){
    DbHelper.dbHelper.insertData(name, age, photo);
    fetchUser();
  }
}