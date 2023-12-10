import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/coutner_state_controller.dart';
import 'package:getx/second_screen.dart';

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
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('First Screen',style: TextStyle(
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
                  Get.to(SecondScreen());
                },
                child: Text('Second Screen'),
            ),
          ],
        ),
      ),
    );
  }
}