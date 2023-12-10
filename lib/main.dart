import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'coutner_state_controller.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CounterStateController counterStateController = CounterStateController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(counterStateController.count.toString()),),
            ElevatedButton(
                onPressed: () {
                  counterStateController.incrementCounter(1);
                },
                child: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}

