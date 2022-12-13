import '../controller/posts_add_effects_controller.dart';
import 'package:get/get.dart';

class PostsAddEffectsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostsAddEffectsController());
  }
}
