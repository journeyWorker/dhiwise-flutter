import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/profile_two_page/models/profile_two_model.dart';class ProfileTwoController extends GetxController {ProfileTwoController(this.profileTwoModelObj);

Rx<ProfileTwoModel> profileTwoModelObj;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; profileTwoModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); profileTwoModelObj.value.dropdownItemList.refresh(); } 
 }
