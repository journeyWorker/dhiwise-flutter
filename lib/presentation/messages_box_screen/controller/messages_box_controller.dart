import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/messages_box_screen/models/messages_box_model.dart';import 'package:flutter/material.dart';class MessagesBoxController extends GetxController {TextEditingController autoLayoutHorizontalController = TextEditingController();

Rx<MessagesBoxModel> messagesBoxModelObj = MessagesBoxModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); autoLayoutHorizontalController.dispose(); } 
 }
