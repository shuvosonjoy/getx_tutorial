import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/coutner_state_controller.dart';
import 'package:getx/second_screen.dart';
import 'package:getx/third_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  CounterStateController counterStateController = Get.find<CounterStateController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Second Screen',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),),
            GetBuilder<CounterStateController>(
                builder: (controller) {
                  return Text(controller.count.toString());
                }
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(ThirdScreen());
              },
              child: Text('Third Screen'),
            ),
          ],
        ),
      ),
    );
  }
}