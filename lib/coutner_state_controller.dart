
import 'package:get/get.dart';

class CountnerStateController{

  RxInt _count =0.obs;
  RxInt get count => _count;
  void incrementCounter(int value){
    _count+=value;
  }
}
