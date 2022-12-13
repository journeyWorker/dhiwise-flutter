import '../controller/posts_add_sounds_controller.dart';
import 'package:get/get.dart';

class PostsAddSoundsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostsAddSoundsController());
  }
}
