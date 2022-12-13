import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/go_live_together_screen/models/go_live_together_model.dart';import 'package:flutter/material.dart';class GoLiveTogetherController extends GetxController {TextEditingController statusDefaultController = TextEditingController();

Rx<GoLiveTogetherModel> goLiveTogetherModelObj = GoLiveTogetherModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusDefaultController.dispose(); } 
 }
