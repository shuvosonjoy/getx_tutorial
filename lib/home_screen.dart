
import 'package:appifylab_task/powerplay_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        shadowColor: Colors.grey,
        elevation: 2,

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
              child: PowerPlaySection('PowerPlay 1',1),
            ),
            Expanded(
              child: PowerPlaySection('PowerPlay 2',2),
            ),
            Expanded(
              child: PowerPlaySection('PowerPlay 3',3),
            ),

          ],
        ),
      ),
    );
  }
}