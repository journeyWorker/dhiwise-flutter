import 'controller/followers_tab_container_controller.dart';import 'package:flutter/material.dart';import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/followers_page/followers_page.dart';import 'package:ticktter/presentation/suggested_page/suggested_page.dart';import 'package:ticktter/widgets/app_bar/appbar_image.dart';import 'package:ticktter/widgets/app_bar/appbar_title.dart';import 'package:ticktter/widgets/app_bar/custom_app_bar.dart';class FollowersTabContainerScreen extends GetWidget<FollowersTabContainerController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(56.00), leadingWidth: 52, leading: AppbarImage(height: getSize(28.00), width: getSize(28.00), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 15), onTap: onTapArrowleft13), title: AppbarTitle(text: "lbl_jenny_wilson2".tr, margin: getMargin(left: 15)), actions: [AppbarImage(height: getSize(28.00), width: getSize(28.00), svgPath: ImageConstant.imgSearchGray900, margin: getMargin(left: 24, top: 10, right: 24, bottom: 15))]), body: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: getHorizontalSize(362.00), margin: getMargin(left: 24, top: 27, right: 24), child: TabBar(controller: controller.group145Controller, tabs: [Tab(text: "lbl_followers".tr), Tab(text: "lbl_following".tr), Tab(text: "lbl_suggested".tr)], labelColor: ColorConstant.deepOrangeA401, unselectedLabelColor: ColorConstant.gray500)), Container(margin: getMargin(left: 24, top: 24, right: 24, bottom: 5), height: getVerticalSize(732.00), child: TabBarView(controller: controller.group145Controller, children: [FollowersPage(), FollowersPage(), SuggestedPage()]))]))); } 
onTapArrowleft13() { Get.back(); } 
 }