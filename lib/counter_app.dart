import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/coutner_state_controller.dart';
import 'package:getx/homescreen.dart';





class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
     home: HomeScreen(),
      initialBinding: GetxDependencyBinder(),
    );
  }
}


class GetxDependencyBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(CounterStateController());
  }

}