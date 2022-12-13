import '../controller/question_answer_controller.dart';
import 'package:get/get.dart';

class QuestionAnswerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuestionAnswerController());
  }
}
