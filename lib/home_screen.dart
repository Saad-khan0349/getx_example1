import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:getx_clean_coding/counter_controller.dart';
import 'package:getx_clean_coding/example_three.dart';
import 'package:getx_clean_coding/example_two.dart';

class HomeScreen extends StatelessWidget {
  ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());
  @override
  Widget build(BuildContext context) {
    ExampleThree exampleThree = Get.put(ExampleThree());
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Notification'),
              Obx(() {
                return Switch(
                  value: exampleThree.notification.value,
                  onChanged: (value) {
                    exampleThree.SetNotification(value);
                  },
                );
              }),
            ],
          ),
        ],
      ),
    );
  }
}
