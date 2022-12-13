import '../trending_hashtag_details_screen/widgets/gridplay1_item_widget.dart';import 'controller/trending_hashtag_details_controller.dart';import 'models/gridplay1_item_model.dart';import 'package:flutter/material.dart';import 'package:ticktter/core/app_export.dart';import 'package:ticktter/widgets/app_bar/appbar_image.dart';import 'package:ticktter/widgets/app_bar/appbar_title.dart';import 'package:ticktter/widgets/app_bar/custom_app_bar.dart';import 'package:ticktter/widgets/custom_button.dart';class TrendingHashtagDetailsScreen extends GetWidget<TrendingHashtagDetailsController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(56.00), leadingWidth: 52, leading: AppbarImage(height: getSize(28.00), width: getSize(28.00), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 15), onTap: onTapArrowleft16), title: AppbarTitle(text: "msg_trending_hashta".tr, margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28.00), width: getSize(28.00), svgPath: ImageConstant.imgReply28x28, margin: getMargin(left: 24, top: 10, right: 24, bottom: 15))]), body: SingleChildScrollView(child: Padding(padding: getPadding(left: 24, top: 24.5, right: 24), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: getPadding(right: 10), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: ColorConstant.deepOrange50, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.circleBorder56), child: Container(height: getSize(112.00), width: getSize(112.00), decoration: AppDecoration.fillDeeporange50.copyWith(borderRadius: BorderRadiusStyle.circleBorder56), child: Stack(children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(all: 32), child: CommonImageView(svgPath: ImageConstant.imgAirplane, height: getSize(48.00), width: getSize(48.00))))]))), Padding(padding: getPadding(left: 22, top: 2, bottom: 1), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(right: 10), child: Text("lbl_amazingfood".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold24)), Padding(padding: getPadding(top: 10, right: 10), child: Text("lbl_827_5m_videos".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray700.copyWith(letterSpacing: 0.20))), CustomButton(width: 184, text: "msg_add_to_favorite".tr, margin: getMargin(top: 13), variant: ButtonVariant.OutlineDeeporangeA401, padding: ButtonPadding.PaddingAll11, fontStyle: ButtonFontStyle.UrbanistRomanBold14, prefixWidget: Container(margin: getMargin(right: 2), child: CommonImageView(svgPath: ImageConstant.imgBookmark16x16)))]))])), Container(height: getVerticalSize(1.00), width: getHorizontalSize(380.00), margin: getMargin(top: 24), decoration: BoxDecoration(color: ColorConstant.gray200)), Padding(padding: getPadding(top: 23), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(201.00), crossAxisCount: 3, mainAxisSpacing: getHorizontalSize(0.00), crossAxisSpacing: getHorizontalSize(0.00)), physics: NeverScrollableScrollPhysics(), itemCount: controller.trendingHashtagDetailsModelObj.value.gridplay1ItemList.length, itemBuilder: (context, index) {Gridplay1ItemModel model = controller.trendingHashtagDetailsModelObj.value.gridplay1ItemList[index]; return Gridplay1ItemWidget(model);})))]))))); } 
onTapArrowleft16() { Get.back(); } 
 }
