import 'package:appifylab_task/powerplay_section.dart';
import 'package:flutter/material.dart';
import 'package:appifylab_task/powerplay_screen.dart';

void main() {
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.chevron_left),
        ),
        title: Text('Start Powerplay Overs'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: PowerPlaySection('PowerPlay 1'),
            ),
            Expanded(
              child: PowerPlaySection('PowerPlay 2'),
            ),
            Expanded(
              child: PowerPlaySection('PowerPlay 3'),
            ),

          ],
        ),
      ),
    );
  }
}
