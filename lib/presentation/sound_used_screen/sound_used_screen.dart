import '../sound_used_screen/widgets/gridplay_one_item_widget.dart';import 'controller/sound_used_controller.dart';import 'models/gridplay_one_item_model.dart';import 'package:flutter/material.dart';import 'package:ticktter/core/app_export.dart';import 'package:ticktter/widgets/app_bar/appbar_image.dart';import 'package:ticktter/widgets/app_bar/custom_app_bar.dart';import 'package:ticktter/widgets/custom_button.dart';class SoundUsedScreen extends GetWidget<SoundUsedController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(56.00), leadingWidth: 52, leading: AppbarImage(height: getSize(28.00), width: getSize(28.00), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 14), onTap: onTapArrowleft11), actions: [AppbarImage(height: getSize(28.00), width: getSize(28.00), svgPath: ImageConstant.imgReply28x28, margin: getMargin(left: 24, top: 10, right: 24, bottom: 14))]), body: SingleChildScrollView(child: Padding(padding: getPadding(left: 24, top: 42.0, right: 24), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: getPadding(right: 10), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Container(height: getSize(140.00), width: getSize(140.00), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.centerLeft, child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(24.00)), child: CommonImageView(imagePath: ImageConstant.imgEllipse24x24, height: getSize(140.00), width: getSize(140.00), fit: BoxFit.cover))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(all: 40), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(16.00)), child: CommonImageView(svgPath: ImageConstant.imgPlay, height: getSize(32.00), width: getSize(32.00), fit: BoxFit.cover))))])), Padding(padding: getPadding(left: 22, top: 27, bottom: 24), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: getHorizontalSize(181.00), child: Text("msg_beautiful_girl".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold24)), Padding(padding: getPadding(top: 17, right: 10), child: Text("lbl_28_7m_videos".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray700.copyWith(letterSpacing: 0.20)))]))])), Padding(padding: getPadding(top: 24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [CustomButton(width: 186, text: "lbl_play_song".tr, variant: ButtonVariant.OutlineDeeporangeA401, padding: ButtonPadding.PaddingAll11, fontStyle: ButtonFontStyle.UrbanistSemiBold14, prefixWidget: Container(margin: getMargin(right: 4), child: CommonImageView(svgPath: ImageConstant.imgPlay16x16))), CustomButton(width: 186, text: "msg_add_to_favorite".tr, variant: ButtonVariant.OutlineDeeporangeA401, padding: ButtonPadding.PaddingAll11, fontStyle: ButtonFontStyle.UrbanistSemiBold14, prefixWidget: Container(margin: getMargin(right: 6), child: CommonImageView(svgPath: ImageConstant.imgBookmark16x16)))])), Padding(padding: getPadding(top: 24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(30.00)), child: CommonImageView(imagePath: ImageConstant.imgEllipse3, height: getSize(60.00), width: getSize(60.00), fit: BoxFit.cover)), Padding(padding: getPadding(left: 20, top: 8, bottom: 7), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(right: 4), child: Text("lbl_sean_kingston".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold18Gray900))), Padding(padding: getPadding(top: 5), child: Text("msg_professional_si".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray700.copyWith(letterSpacing: 0.20)))]))]), CustomButton(width: 73, text: "lbl_follow".tr, margin: getMargin(top: 14, bottom: 14))])), Container(height: getVerticalSize(1.00), width: getHorizontalSize(380.00), margin: getMargin(top: 24), decoration: BoxDecoration(color: ColorConstant.gray200)), Padding(padding: getPadding(top: 23), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(201.00), crossAxisCount: 3, mainAxisSpacing: getHorizontalSize(8.67), crossAxisSpacing: getHorizontalSize(8.67)), physics: NeverScrollableScrollPhysics(), itemCount: controller.soundUsedModelObj.value.gridplayOneItemList.length, itemBuilder: (context, index) {GridplayOneItemModel model = controller.soundUsedModelObj.value.gridplayOneItemList[index]; return GridplayOneItemWidget(model);})))]))))); } 
onTapArrowleft11() { Get.back(); } 
 }