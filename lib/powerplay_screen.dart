import 'package:appifylab_task/controller/click_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClickableContainerGrid extends StatelessWidget {
  final ClickController myController = Get.put(ClickController());
  final int mapKey;

  int? getKeyForValue(Map<int, List<int>> map, int searchValue) {
    for (var entry in map.entries) {
      print(entry);
      if (entry.value.contains(searchValue)) {
        return entry.key;
      }
    }
    return null;
  }

  final int numberOfContainers = 20;

  ClickableContainerGrid({super.key, required this.mapKey});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClickController>(builder: (controller) {
      return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 8,
        ),
        itemCount: numberOfContainers,
        itemBuilder: (BuildContext context, index) {
          return InkWell(
            onTap: () {
              if (!myController.isClickedList[index]) {
                if (myController.mapps.containsKey(mapKey)) {
                  myController.mapps[mapKey]!.add(index);
                } else {
                  myController.mapps[mapKey] = [index];
                }
                myController.checkButton(index);
              } else {
                int? result = getKeyForValue(myController.mapps, index);
                print('result: $result');
                myController.mapps.forEach((key, value) {
                  print('mapps are $key: $value');
                });
                if (result == mapKey) {
                  print("entered");

                  myController.uneckButton(index);
                  if (myController.mapps.containsKey(mapKey)) {
                    myController.mapps[mapKey]!.remove(index);

                    if (myController.mapps[mapKey]!.isEmpty) {
                      myController.mapps.remove(mapKey);
                    }
                  }
                }
              }

            },
            child: Container(
              margin: EdgeInsets.all(5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: myController.isClickedList[index]
                    ? Colors.yellow
                    : Color(0xff333232),),

              ),
              child: Text(
                (index + 1).toString(),
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      );
    });
  }
}
