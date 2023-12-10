import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'coutner_state_controller.dart';

void main() {
  runApp(myApp());
}

class GetxDependencyBinder extends Bindings{
  @override
  void dependencies() {
  Get.put(CounterStateController());
  }
  
}


class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      home: HomeScreen(),
      initialBinding: GetxDependencyBinder(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CounterStateController counterStateController = Get.find<CounterStateController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterStateController>(
              builder: (controller) {
                return Text(controller.count.toString());
              }
            ),
            ElevatedButton(
                onPressed: () {
                  counterStateController.updateValue(1);
                },
                child: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
