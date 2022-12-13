import '../controller/home_swipe_up_instructions_controller.dart';
import 'package:get/get.dart';

class HomeSwipeUpInstructionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeSwipeUpInstructionsController());
  }
}
