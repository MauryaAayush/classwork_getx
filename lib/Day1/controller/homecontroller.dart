
import 'package:get/get.dart';

class Homecontroller extends GetxController{

  // var count = 0.obs;

  RxInt count = 0.obs;

  void increment(){
    count++;
  }
}