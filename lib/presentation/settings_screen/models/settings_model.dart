import 'package:get/get.dart';import 'listuser2_item_model.dart';import 'package:ticktter/data/models/selectionPopupModel/selection_popup_model.dart';import 'listvideocamera_item_model.dart';class SettingsModel {RxList<Listuser2ItemModel> listuser2ItemList = RxList.filled(4,Listuser2ItemModel());

RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

RxList<ListvideocameraItemModel> listvideocameraItemList = RxList.filled(8,ListvideocameraItemModel());

 }
