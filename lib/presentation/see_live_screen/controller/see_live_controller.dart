import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/see_live_screen/models/see_live_model.dart';import 'package:flutter/material.dart';class SeeLiveController extends GetxController {TextEditingController statusDefaultController = TextEditingController();

Rx<SeeLiveModel> seeLiveModelObj = SeeLiveModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusDefaultController.dispose(); } 
 }
