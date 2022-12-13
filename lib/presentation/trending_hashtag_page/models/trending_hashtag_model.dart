import 'package:get/get.dart';import 'package:ticktter/data/models/selectionPopupModel/selection_popup_model.dart';import 'listplay2_item_model.dart';import 'listplay_three1_item_model.dart';class TrendingHashtagModel {RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

RxList<Listplay2ItemModel> listplay2ItemList = RxList.filled(3,Listplay2ItemModel());

RxList<SelectionPopupModel> dropdownItemList1 = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

RxList<ListplayThree1ItemModel> listplayThree1ItemList = RxList.filled(3,ListplayThree1ItemModel());

RxList<SelectionPopupModel> dropdownItemList2 = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

 }
