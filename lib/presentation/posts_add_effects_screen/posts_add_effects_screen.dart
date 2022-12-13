import '../posts_add_effects_screen/widgets/grid_item_widget.dart';import 'controller/posts_add_effects_controller.dart';import 'models/grid_item_model.dart';import 'package:flutter/material.dart';import 'package:ticktter/core/app_export.dart';import 'package:ticktter/widgets/custom_button.dart';import 'package:ticktter/widgets/custom_floating_button.dart';class PostsAddEffectsScreen extends GetWidget<PostsAddEffectsController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(height: getVerticalSize(882.00), width: size.width, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.centerLeft, child: CommonImageView(imagePath: ImageConstant.imgRectangle882x428, height: getVerticalSize(882.00), width: getHorizontalSize(428.00))), Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(882.00), width: size.width, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomLeft, child: Container(margin: getMargin(top: 10), decoration: AppDecoration.gradientGray90000Gray900100, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.end, children: [Align(alignment: Alignment.centerLeft, child: Container(margin: getMargin(top: 146), decoration: AppDecoration.fillGray902, child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(top: 17, bottom: 16), child: Text("lbl_camera".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold16Gray600.copyWith(letterSpacing: 0.20))), Padding(padding: getPadding(left: 32, top: 17, bottom: 16), child: Text("lbl_quick".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold16WhiteA700.copyWith(letterSpacing: 0.20))), Padding(padding: getPadding(left: 22, top: 19, bottom: 15), child: Text("lbl_templates".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold16Gray600.copyWith(letterSpacing: 0.20)))])))]))), Align(alignment: Alignment.topCenter, child: Padding(padding: getPadding(left: 24, top: 32, right: 24, bottom: 32), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(right: 10), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(top: 4, bottom: 4), child: InkWell(onTap: () {onTapImgClose();}, child: CommonImageView(svgPath: ImageConstant.imgClose24x24, height: getSize(24.00), width: getSize(24.00)))), CustomButton(width: 133, text: "lbl_add_sound".tr, margin: getMargin(left: 100), variant: ButtonVariant.FillGray80099, shape: ButtonShape.RoundedBorder16, prefixWidget: Container(margin: getMargin(right: 8), child: CommonImageView(svgPath: ImageConstant.imgMusic)))]))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 342, top: 20, right: 2), child: InkWell(onTap: () {onTapImgCameraOne();}, child: CommonImageView(svgPath: ImageConstant.imgCamera, height: getSize(36.00), width: getSize(36.00))))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 10, top: 6, right: 10), child: Text("lbl_flip".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium12.copyWith(letterSpacing: 0.20)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 342, top: 22, right: 2), child: CommonImageView(svgPath: ImageConstant.imgDashboard36x36, height: getSize(36.00), width: getSize(36.00)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 341, top: 6, right: 2), child: Text("lbl_speed".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium12.copyWith(letterSpacing: 0.20)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 342, top: 22, right: 2), child: CommonImageView(svgPath: ImageConstant.imgUser36x36, height: getSize(36.00), width: getSize(36.00)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 343, top: 5, right: 3), child: Text("lbl_filters".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium12.copyWith(letterSpacing: 0.20)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 342, top: 23, right: 2), child: CommonImageView(svgPath: ImageConstant.imgMusic36x36, height: getSize(36.00), width: getSize(36.00)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 10, top: 6), child: Text("lbl_beauty".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium12.copyWith(letterSpacing: 0.20)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 342, top: 22, right: 2), child: CommonImageView(svgPath: ImageConstant.imgClock36x36, height: getSize(36.00), width: getSize(36.00)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 343, top: 5, right: 3), child: Text("lbl_timer".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium12.copyWith(letterSpacing: 0.20)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 342, top: 23, right: 2), child: CommonImageView(svgPath: ImageConstant.imgUser, height: getSize(36.00), width: getSize(36.00)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 344, top: 6, right: 4), child: Text("lbl_reply".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium12.copyWith(letterSpacing: 0.20)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 342, top: 22, right: 2), child: CommonImageView(svgPath: ImageConstant.imgAirplane36x36, height: getSize(36.00), width: getSize(36.00)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 345, top: 5, right: 5), child: Text("lbl_flash".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium12.copyWith(letterSpacing: 0.20)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 31, top: 55, right: 31), child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Container(decoration: AppDecoration.fillGray80099.copyWith(borderRadius: BorderRadiusStyle.circleBorder16), child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [Padding(padding: getPadding(left: 16, top: 6, bottom: 6), child: CommonImageView(svgPath: ImageConstant.imgVideocamera20x20, height: getSize(20.00), width: getSize(20.00))), Padding(padding: getPadding(left: 8, top: 7, right: 16, bottom: 7), child: Text("lbl_video".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold14WhiteA700.copyWith(letterSpacing: 0.20)))])), Container(margin: getMargin(left: 12), decoration: AppDecoration.fillGray80099.copyWith(borderRadius: BorderRadiusStyle.circleBorder16), child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [Padding(padding: getPadding(left: 16, top: 6, bottom: 6), child: CommonImageView(svgPath: ImageConstant.imgLocation20x20, height: getSize(20.00), width: getSize(20.00))), Padding(padding: getPadding(left: 8, top: 7, right: 16, bottom: 7), child: Text("lbl_photo".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold14Gray500.copyWith(letterSpacing: 0.20)))]))]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 10, top: 16, right: 10), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(top: 12, bottom: 11), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 1, right: 1), child: CommonImageView(imagePath: ImageConstant.imgFrameRed400, height: getSize(36.00), width: getSize(36.00)))), Padding(padding: getPadding(top: 5), child: Text("lbl_effects".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium12.copyWith(letterSpacing: 0.20)))])), Padding(padding: getPadding(top: 12, bottom: 10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 2, right: 2), child: CommonImageView(svgPath: ImageConstant.imgUpload, height: getSize(36.00), width: getSize(36.00)))), Padding(padding: getPadding(top: 6), child: Text("lbl_upload".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium12.copyWith(letterSpacing: 0.20)))]))])))]))), Align(alignment: Alignment.centerLeft, child: Container(decoration: AppDecoration.fillGray90099, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.end, children: [Align(alignment: Alignment.centerLeft, child: Container(width: double.infinity, margin: getMargin(top: 393), decoration: AppDecoration.outlineGray100.copyWith(borderRadius: BorderRadiusStyle.customBorderTL40), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 8, right: 24), child: CommonImageView(svgPath: ImageConstant.imgFrame, height: getVerticalSize(3.00), width: getHorizontalSize(38.00)))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 23, right: 24), child: Text("lbl_effects".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold24))), Align(alignment: Alignment.center, child: Container(height: getVerticalSize(1.00), width: getHorizontalSize(380.00), margin: getMargin(left: 24, top: 24, right: 24), decoration: BoxDecoration(color: ColorConstant.gray200))), Padding(padding: getPadding(left: 24, top: 25, right: 24), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(top: 3, bottom: 6), child: CommonImageView(svgPath: ImageConstant.imgSearchGray500, height: getSize(28.00), width: getSize(28.00))), Padding(padding: getPadding(left: 24, top: 3, bottom: 6), child: CommonImageView(svgPath: ImageConstant.imgIconlycurvedbookmark, height: getSize(28.00), width: getSize(28.00))), Padding(padding: getPadding(left: 24, top: 1), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 43, right: 43), child: Text("lbl_trending".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18DeeporangeA401.copyWith(letterSpacing: 0.20))), Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(4.00), width: getHorizontalSize(160.00), margin: getMargin(top: 11), decoration: BoxDecoration(color: ColorConstant.deepOrangeA401, borderRadius: BorderRadius.circular(getHorizontalSize(2.00)))))])), Padding(padding: getPadding(left: 39, bottom: 16), child: Text("lbl_new".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray500.copyWith(letterSpacing: 0.20)))])), Align(alignment: Alignment.center, child: Padding(padding: getPadding(all: 24), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(81.00), crossAxisCount: 4, mainAxisSpacing: getHorizontalSize(20.00), crossAxisSpacing: getHorizontalSize(20.00)), physics: BouncingScrollPhysics(), itemCount: controller.postsAddEffectsModelObj.value.gridItemList.length, itemBuilder: (context, index) {GridItemModel model = controller.postsAddEffectsModelObj.value.gridItemList[index]; return GridItemWidget(model);}))))])))])))])))])), floatingActionButton: CustomFloatingButton(height: 80, width: 80, child: CommonImageView(svgPath: ImageConstant.imgVideocamera20x20, height: getVerticalSize(40.00), width: getHorizontalSize(40.00))))); } 
onTapImgClose() { Get.back(); } 
onTapImgCameraOne() async  { await PermissionManager.askForPermission(Permission.camera);await PermissionManager.askForPermission(Permission.storage);List<String?>? imageList = [];
//TODO: Permission - use imageList for using selected images
await FileManager().showModelSheetForImage(getImages: (value) async {imageList = value;}); } 
 }