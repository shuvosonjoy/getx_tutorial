import 'package:appifylab_task/powerplay_screen.dart';
import 'package:flutter/material.dart';

class PowerPlaySection extends StatelessWidget {
  final String title;
  final int mapKey;

  PowerPlaySection(this.title, this.mapKey);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Expanded(
          child: ClickableContainerGrid(mapKey: mapKey,),
        ),
      ],
    );
  }
}
