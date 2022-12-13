import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/presentation/total_likes_dialog/models/total_likes_model.dart';

class TotalLikesController extends GetxController {
  Rx<TotalLikesModel> totalLikesModelObj = TotalLikesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
