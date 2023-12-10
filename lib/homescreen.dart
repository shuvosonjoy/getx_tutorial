

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/coutner_state_controller.dart';

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