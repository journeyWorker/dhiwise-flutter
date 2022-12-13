import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/type_comments_screen/models/type_comments_model.dart';import 'package:flutter/material.dart';class TypeCommentsController extends GetxController {TextEditingController stateInactiveController = TextEditingController();

TextEditingController stateInactiveOneController = TextEditingController();

TextEditingController statusActiveTypeNormalController = TextEditingController();

Rx<TypeCommentsModel> typeCommentsModelObj = TypeCommentsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); stateInactiveController.dispose(); stateInactiveOneController.dispose(); statusActiveTypeNormalController.dispose(); } 
 }
