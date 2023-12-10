
import 'package:get/get.dart';

class CounterStateController extends GetxController{

  int _count =0;
  int get count => _count;
  void updateValue(int value){
    _count+=value;
    update();
  }
}
