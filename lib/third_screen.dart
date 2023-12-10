import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/coutner_state_controller.dart';
import 'package:getx/homescreen.dart';
import 'package:getx/second_screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  CounterStateController counterStateController =
      Get.find<CounterStateController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Third Screen',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            GetBuilder<CounterStateController>(builder: (controller) {
              return Text(controller.count.toString());
            }),
            ElevatedButton(
              onPressed: () {
                Get.to(HomeScreen());
              },
              child: Text('First Screen'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.off(HomeScreen());
              },
              child: Text('First Screen(off)'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(HomeScreen()); ///pushAndRemoveUntil

              },
              child: Text('First Screen(offAll)'),

            ),
          ],
        ),
      ),
    );
  }
}
