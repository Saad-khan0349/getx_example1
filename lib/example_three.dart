import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ExampleThree extends GetxController {
  RxBool notification = false.obs;

  SetNotification(bool value) {
    notification.value = value;
  }
}
