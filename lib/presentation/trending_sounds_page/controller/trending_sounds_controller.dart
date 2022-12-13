import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/trending_sounds_page/models/trending_sounds_model.dart';class TrendingSoundsController extends GetxController {TrendingSoundsController(this.trendingSoundsModelObj);

Rx<TrendingSoundsModel> trendingSoundsModelObj;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; trendingSoundsModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); trendingSoundsModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { selectedDropDownValue1 = value as SelectionPopupModel; trendingSoundsModelObj.value.dropdownItemList1.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); trendingSoundsModelObj.value.dropdownItemList1.refresh(); } 
 }
