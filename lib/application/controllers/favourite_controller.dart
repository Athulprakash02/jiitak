import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<bool> isFavouriteList = List.generate(6, (index) => false).obs;
  
  void toggleFavourite(int index){
    isFavouriteList[index]=!isFavouriteList[index];
  }
  
}