import 'package:get/get.dart';import 'listellipse5_item_model.dart';import 'listellipse_three1_item_model.dart';import 'listellipse_five1_item_model.dart';import 'package:ticktter/data/models/selectionPopupModel/selection_popup_model.dart';class AllActivityDropdownModel {RxList<Listellipse5ItemModel> listellipse5ItemList = RxList.filled(3,Listellipse5ItemModel());

RxList<ListellipseThree1ItemModel> listellipseThree1ItemList = RxList.filled(2,ListellipseThree1ItemModel());

RxList<ListellipseFive1ItemModel> listellipseFive1ItemList = RxList.filled(4,ListellipseFive1ItemModel());

RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

RxList<SelectionPopupModel> dropdownItemList1 = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

 }
