import '../controller/add_option_controller.dart';
import 'package:get/get.dart';

class AddOptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddOptionController());
  }
}
