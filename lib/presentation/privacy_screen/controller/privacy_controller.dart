import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/privacy_screen/models/privacy_model.dart';class PrivacyController extends GetxController {Rx<PrivacyModel> privacyModelObj = PrivacyModel().obs;

RxBool isSelectedSwitch = false.obs;

RxBool isSelectedSwitch1 = false.obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

SelectionPopupModel? selectedDropDownValue3;

SelectionPopupModel? selectedDropDownValue4;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; privacyModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); privacyModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { selectedDropDownValue1 = value as SelectionPopupModel; privacyModelObj.value.dropdownItemList1.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); privacyModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { selectedDropDownValue2 = value as SelectionPopupModel; privacyModelObj.value.dropdownItemList2.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); privacyModelObj.value.dropdownItemList2.refresh(); } 
onSelected3(dynamic value) { selectedDropDownValue3 = value as SelectionPopupModel; privacyModelObj.value.dropdownItemList3.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); privacyModelObj.value.dropdownItemList3.refresh(); } 
onSelected4(dynamic value) { selectedDropDownValue4 = value as SelectionPopupModel; privacyModelObj.value.dropdownItemList4.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); privacyModelObj.value.dropdownItemList4.refresh(); } 
 }
