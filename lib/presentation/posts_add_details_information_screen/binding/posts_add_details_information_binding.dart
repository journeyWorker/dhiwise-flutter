import '../controller/posts_add_details_information_controller.dart';
import 'package:get/get.dart';

class PostsAddDetailsInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostsAddDetailsInformationController());
  }
}
