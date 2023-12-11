import 'package:get/get.dart';

class ClickController extends GetxController{
  List<bool> isClickedList = List.generate(20, (index) => false);

  void checkButton(int index){
    if(index<=7){
      if(index==0){
        print(isClickedList[index]);
        isClickedList[index] = !isClickedList[index];
        print(isClickedList[index]);
        print('available');
      }
      else if(isClickedList[index] != isClickedList[index-1]){
        print('available');
        print(isClickedList[index]);
        isClickedList[index] = !isClickedList[index];
        print(isClickedList[index]);
      }
      else if((isClickedList[index]==isClickedList[index-1]) &&(isClickedList[index]!=isClickedList[index+1]) ){
        isClickedList[index] = !isClickedList[index];
      }
    }
    else{
      if((isClickedList[index] != isClickedList[index-8]) || (isClickedList[index] != isClickedList[index-1]) ){
        print(isClickedList[index]);
        isClickedList[index] = !isClickedList[index];
        print(isClickedList[index]);
        print(index-8);
        print(isClickedList[index]);
        print('available');
      }
      else if((isClickedList[index]==isClickedList[index-1]) &&(isClickedList[index]!=isClickedList[index+1]) ){
        isClickedList[index] = !isClickedList[index];
      }
    }
    update();
  }


}