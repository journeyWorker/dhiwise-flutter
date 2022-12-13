import '../controller/go_live_together_controller.dart';
import 'package:get/get.dart';

class GoLiveTogetherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GoLiveTogetherController());
  }
}
