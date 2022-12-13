import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/trending_hashtag_page/models/trending_hashtag_model.dart';class TrendingHashtagController extends GetxController {TrendingHashtagController(this.trendingHashtagModelObj);

Rx<TrendingHashtagModel> trendingHashtagModelObj;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; trendingHashtagModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); trendingHashtagModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { selectedDropDownValue1 = value as SelectionPopupModel; trendingHashtagModelObj.value.dropdownItemList1.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); trendingHashtagModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { selectedDropDownValue2 = value as SelectionPopupModel; trendingHashtagModelObj.value.dropdownItemList2.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); trendingHashtagModelObj.value.dropdownItemList2.refresh(); } 
 }
