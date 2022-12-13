import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/choose_your_interest_screen/models/choose_your_interest_model.dart';import 'package:flutter/material.dart';class ChooseYourInterestController extends GetxController {TextEditingController sizeLargeTypeFilledController = TextEditingController();

Rx<ChooseYourInterestModel> chooseYourInterestModelObj = ChooseYourInterestModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); sizeLargeTypeFilledController.dispose(); } 
 }
