import 'package:get/get.dart';import 'profile_two_item_model.dart';import 'package:ticktter/data/models/selectionPopupModel/selection_popup_model.dart';class ProfileTwoModel {RxList<ProfileTwoItemModel> profileTwoItemList = RxList.filled(6,ProfileTwoItemModel());

RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

 }
