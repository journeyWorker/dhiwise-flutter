import '../controller/viewers_controller.dart';
import 'package:get/get.dart';

class ViewersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewersController());
  }
}
