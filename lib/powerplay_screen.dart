import 'package:appifylab_task/click_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClickableContainerGrid extends StatelessWidget {
  final ClickController myController = Get.put(ClickController());

  // Number of containers in the grid
  final int numberOfContainers = 20;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClickController>(
      builder: (controller) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8,
          ),
          itemCount: numberOfContainers,
          itemBuilder: (BuildContext context, index) {
            return InkWell(
              onTap: () {
                myController.checkButton(index);

              },
              child: Container(
                margin: EdgeInsets.all(5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: myController.isClickedList[index] ? Colors.grey : Colors.black,
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
    );
  }
}