import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/all_activity_dropdown_screen/models/all_activity_dropdown_model.dart';import 'package:ticktter/widgets/custom_bottom_bar.dart';class AllActivityDropdownController extends GetxController {Rx<AllActivityDropdownModel> allActivityDropdownModelObj = AllActivityDropdownModel().obs;

Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; allActivityDropdownModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); allActivityDropdownModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { selectedDropDownValue1 = value as SelectionPopupModel; allActivityDropdownModelObj.value.dropdownItemList1.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); allActivityDropdownModelObj.value.dropdownItemList1.refresh(); } 
 }
