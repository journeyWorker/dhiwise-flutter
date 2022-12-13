import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/add_option_screen/models/add_option_model.dart';import 'package:ticktter/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';class AddOptionController extends GetxController {TextEditingController stateInactiveController = TextEditingController();

TextEditingController stateInactiveOneController = TextEditingController();

Rx<AddOptionModel> addOptionModelObj = AddOptionModel().obs;

Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); stateInactiveController.dispose(); stateInactiveOneController.dispose(); } 
 }
