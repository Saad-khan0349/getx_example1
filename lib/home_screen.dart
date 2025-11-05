import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:getx_clean_coding/counter_controller.dart';

class HomeScreen extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: Obx(() {
          print('rebuild');
          return Text(
            controller.counter.toString(),
            style: TextStyle(fontSize: 55),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
        },
      ),
    );
  }
}
