import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/type_message_screen/models/type_message_model.dart';import 'package:flutter/material.dart';class TypeMessageController extends GetxController {TextEditingController autoLayoutHorizontalController = TextEditingController();

Rx<TypeMessageModel> typeMessageModelObj = TypeMessageModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); autoLayoutHorizontalController.dispose(); } 
 }
