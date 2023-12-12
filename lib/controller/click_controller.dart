import 'package:get/get.dart';

class ClickController extends GetxController{
  List<bool> isClickedList = List.generate(20, (index) => false);
  Map<int,List<int>>mapps={};


  void checkButton(int index){
    if(index<=7){
      if(index==0){

        isClickedList[index] = !isClickedList[index];

      }
      else if(isClickedList[index] != isClickedList[index-1]){

        isClickedList[index] = !isClickedList[index];

      }
      else if((isClickedList[index]==isClickedList[index-1]) &&(isClickedList[index]!=isClickedList[index+1]) ){
        isClickedList[index] = !isClickedList[index];
      }
    }
    else{
      if((isClickedList[index] != isClickedList[index-8]) || (isClickedList[index] != isClickedList[index-1]) ){

        isClickedList[index] = !isClickedList[index];

      }
      else if((isClickedList[index]==isClickedList[index-1]) &&(isClickedList[index]!=isClickedList[index+1]) ){
        isClickedList[index] = !isClickedList[index];
      }
    }
    update();
  }
  void uneckButton(int index){
    if(index>=12){
      if(index==19){
        isClickedList[index] = !isClickedList[index];
      }
      else if(isClickedList[index]!=isClickedList[index+1]){
        isClickedList[index] = !isClickedList[index];
      }
    }

    else{

      if((isClickedList[index] != isClickedList[index+8]) && (isClickedList[index] != isClickedList[index+1]) ){
        print(isClickedList[index]);
        isClickedList[index] = !isClickedList[index];
        print(isClickedList[index]);
        print(index-8);
        print(isClickedList[index]);
        print('available');
      }

    }
    update();
  }


}