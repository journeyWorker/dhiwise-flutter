import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/home_swipe_up_instructions_screen/models/home_swipe_up_instructions_model.dart';import 'package:ticktter/widgets/custom_bottom_bar.dart';class HomeSwipeUpInstructionsController extends GetxController {Rx<HomeSwipeUpInstructionsModel> homeSwipeUpInstructionsModelObj = HomeSwipeUpInstructionsModel().obs;

Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
