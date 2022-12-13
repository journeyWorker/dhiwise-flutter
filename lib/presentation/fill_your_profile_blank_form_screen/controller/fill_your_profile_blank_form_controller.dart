import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/fill_your_profile_blank_form_screen/models/fill_your_profile_blank_form_model.dart';import 'package:flutter/material.dart';class FillYourProfileBlankFormController extends GetxController {TextEditingController statusDefaultController = TextEditingController();

TextEditingController statusDefaultOneController = TextEditingController();

TextEditingController frameThreeController = TextEditingController();

TextEditingController statusDefaultThreeController = TextEditingController();

Rx<FillYourProfileBlankFormModel> fillYourProfileBlankFormModelObj = FillYourProfileBlankFormModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusDefaultController.dispose(); statusDefaultOneController.dispose(); frameThreeController.dispose(); statusDefaultThreeController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; fillYourProfileBlankFormModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); fillYourProfileBlankFormModelObj.value.dropdownItemList.refresh(); } 
 }
