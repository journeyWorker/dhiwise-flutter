import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/sign_up_blank_form_screen/models/sign_up_blank_form_model.dart';import 'package:flutter/material.dart';class SignUpBlankFormController extends GetxController {TextEditingController statusDefaultController = TextEditingController();

TextEditingController statusDefaultOneController = TextEditingController();

Rx<SignUpBlankFormModel> signUpBlankFormModelObj = SignUpBlankFormModel().obs;

RxBool checkbox = false.obs;

Rx<bool> isShowPassword = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusDefaultController.dispose(); statusDefaultOneController.dispose(); } 
 }
