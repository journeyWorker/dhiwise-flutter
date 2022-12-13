import 'package:get/get.dart';import 'listellipse4_item_model.dart';import 'listellipse_three_item_model.dart';import 'listellipse_five_item_model.dart';import 'package:ticktter/data/models/selectionPopupModel/selection_popup_model.dart';class AllActivityModel {RxList<Listellipse4ItemModel> listellipse4ItemList = RxList.filled(3,Listellipse4ItemModel());

RxList<ListellipseThreeItemModel> listellipseThreeItemList = RxList.filled(2,ListellipseThreeItemModel());

RxList<ListellipseFiveItemModel> listellipseFiveItemList = RxList.filled(2,ListellipseFiveItemModel());

RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

 }
