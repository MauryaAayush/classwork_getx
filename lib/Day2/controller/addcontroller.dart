
import 'package:get/get.dart';

class CardController extends GetxController{

  RxList productList = [].obs;
  RxInt index = 0.obs;

  void changeIndex(){
    index++;
  }

  void addToCart(Map m1){

    productList.add(m1);

  }

  void removeData(int index){
    productList.removeAt(index);
  }


}