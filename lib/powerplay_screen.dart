import 'package:flutter/material.dart';

class ClickableContainerGrid extends StatefulWidget {
  @override
  _ClickableContainerGridState createState() => _ClickableContainerGridState();
}

class _ClickableContainerGridState extends State<ClickableContainerGrid> {
  // Number of containers in the grid
  final int numberOfContainers = 20;

  // List to track the clicked status for each container
  List<bool> isClickedList = List.generate(20, (index) => false);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 8,
      ),
      itemCount: numberOfContainers,
      itemBuilder: (BuildContext ctx, index) {
        return InkWell(
          onTap: () {

              isClickedList[index] = !isClickedList[index];
            setState(() {

            });
          },
          child: Container(
            margin: EdgeInsets.all(5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isClickedList[index] ? Colors.grey : Colors.black,
            ),
            child: Text(
              (index + 1).toString(),
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}