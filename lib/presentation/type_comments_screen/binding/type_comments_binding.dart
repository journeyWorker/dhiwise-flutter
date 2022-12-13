import '../controller/type_comments_controller.dart';
import 'package:get/get.dart';

class TypeCommentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TypeCommentsController());
  }
}
