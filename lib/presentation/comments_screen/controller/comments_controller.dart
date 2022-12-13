import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/comments_screen/models/comments_model.dart';import 'package:ticktter/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';class CommentsController extends GetxController {TextEditingController stateInactiveController = TextEditingController();

TextEditingController stateInactiveOneController = TextEditingController();

TextEditingController statusDefaultController = TextEditingController();

Rx<CommentsModel> commentsModelObj = CommentsModel().obs;

Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); stateInactiveController.dispose(); stateInactiveOneController.dispose(); statusDefaultController.dispose(); } 
 }
