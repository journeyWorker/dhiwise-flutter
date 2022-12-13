import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/posts_add_sounds_screen/models/posts_add_sounds_model.dart';import 'package:flutter/material.dart';class PostsAddSoundsController extends GetxController {TextEditingController stateDefaultSearchController = TextEditingController();

Rx<PostsAddSoundsModel> postsAddSoundsModelObj = PostsAddSoundsModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); stateDefaultSearchController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; postsAddSoundsModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); postsAddSoundsModelObj.value.dropdownItemList.refresh(); } 
 }
