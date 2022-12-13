import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/posts_upload_media_tab_container_screen/models/posts_upload_media_tab_container_model.dart';import 'package:flutter/material.dart';class PostsUploadMediaTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<PostsUploadMediaTabContainerModel> postsUploadMediaTabContainerModelObj = PostsUploadMediaTabContainerModel().obs;

late TabController autolayouthorizontalController = Get.put(TabController(vsync: this, length: 3));

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; postsUploadMediaTabContainerModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); postsUploadMediaTabContainerModelObj.value.dropdownItemList.refresh(); } 
 }
