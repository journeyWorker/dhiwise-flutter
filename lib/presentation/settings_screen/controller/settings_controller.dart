import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/settings_screen/models/settings_model.dart';class SettingsController extends GetxController {Rx<SettingsModel> settingsModelObj = SettingsModel().obs;

RxBool isSelectedSwitch = false.obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; settingsModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); settingsModelObj.value.dropdownItemList.refresh(); } 
 }
