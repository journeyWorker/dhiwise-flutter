import 'package:get/get.dart';import 'package:ticktter/data/models/selectionPopupModel/selection_popup_model.dart';import 'listplay1_item_model.dart';import 'listplay_three_item_model.dart';class TrendingSoundsModel {RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

RxList<Listplay1ItemModel> listplay1ItemList = RxList.filled(3,Listplay1ItemModel());

RxList<SelectionPopupModel> dropdownItemList1 = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

RxList<ListplayThreeItemModel> listplayThreeItemList = RxList.filled(3,ListplayThreeItemModel());

 }
