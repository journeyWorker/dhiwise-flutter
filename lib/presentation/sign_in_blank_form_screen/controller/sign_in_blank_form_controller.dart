import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/sign_in_blank_form_screen/models/sign_in_blank_form_model.dart';import 'package:flutter/material.dart';class SignInBlankFormController extends GetxController {TextEditingController statusDefaultController = TextEditingController();

TextEditingController statusDefaultOneController = TextEditingController();

Rx<SignInBlankFormModel> signInBlankFormModelObj = SignInBlankFormModel().obs;

RxBool checkbox = false.obs;

Rx<bool> isShowPassword = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusDefaultController.dispose(); statusDefaultOneController.dispose(); } 
 }
