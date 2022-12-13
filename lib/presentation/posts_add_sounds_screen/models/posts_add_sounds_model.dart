import 'package:get/get.dart';import 'listplay3_item_model.dart';import 'package:ticktter/data/models/selectionPopupModel/selection_popup_model.dart';class PostsAddSoundsModel {RxList<Listplay3ItemModel> listplay3ItemList = RxList.filled(6,Listplay3ItemModel());

RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

 }
