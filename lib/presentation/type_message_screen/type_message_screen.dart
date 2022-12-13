import 'controller/type_message_controller.dart';import 'package:flutter/material.dart';import 'package:ticktter/core/app_export.dart';import 'package:ticktter/widgets/app_bar/appbar_image.dart';import 'package:ticktter/widgets/app_bar/appbar_title.dart';import 'package:ticktter/widgets/app_bar/custom_app_bar.dart';import 'package:ticktter/widgets/custom_button.dart';import 'package:ticktter/widgets/custom_text_form_field.dart';class TypeMessageScreen extends GetWidget<TypeMessageController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(56.00), leadingWidth: 52, leading: AppbarImage(height: getSize(28.00), width: getSize(28.00), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 14), onTap: onTapArrowleft20), title: AppbarTitle(text: "lbl_theresa_varnes".tr, margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28.00), width: getSize(28.00), svgPath: ImageConstant.imgCall28x28, margin: getMargin(left: 24, top: 10, bottom: 14)), AppbarImage(height: getSize(28.00), width: getSize(28.00), svgPath: ImageConstant.imgClock24x24, margin: getMargin(left: 20, top: 10, right: 24, bottom: 14))]), body: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [CustomButton(width: 75, text: "lbl_today".tr, margin: getMargin(left: 24, top: 43, right: 24), variant: ButtonVariant.FillGray6001e, padding: ButtonPadding.PaddingAll4, fontStyle: ButtonFontStyle.UrbanistSemiBold10, alignment: Alignment.center), Align(alignment: Alignment.centerLeft, child: Container(width: double.infinity, margin: getMargin(left: 24, top: 24, right: 24), decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.customBorderBL16), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 15, right: 20), child: Text("msg_hi_morning_too".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular16.copyWith(letterSpacing: 0.20)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 20, top: 6, right: 20, bottom: 11), child: Text("lbl_10_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular12Gray600.copyWith(letterSpacing: 0.20))))]))), Align(alignment: Alignment.centerLeft, child: Container(margin: getMargin(left: 24, top: 10, right: 24), decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.customBorderBL16), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.max, children: [Container(width: getHorizontalSize(202.00), margin: getMargin(left: 20, top: 18, bottom: 13), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_yes_you_re_righ2".tr, style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(16), fontFamily: 'Urbanist', fontWeight: FontWeight.w400, letterSpacing: 0.20)), TextSpan(text: "lbl".tr, style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(16), fontFamily: 'Urbanist', fontWeight: FontWeight.w400, letterSpacing: 0.20)), TextSpan(text: "lbl".tr, style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(16), fontFamily: 'Urbanist', fontWeight: FontWeight.w400, letterSpacing: 0.20))]), textAlign: TextAlign.left)), Padding(padding: getPadding(left: 29, top: 64, bottom: 11), child: Text("lbl_10_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular12Gray600.copyWith(letterSpacing: 0.20)))]))), Align(alignment: Alignment.centerRight, child: Container(width: double.infinity, margin: getMargin(left: 24, top: 24, right: 24), decoration: AppDecoration.gradientDeeporangeA400Orange600.copyWith(borderRadius: BorderRadiusStyle.customBorderTL161), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 13, right: 20), child: Text("msg_hi_theresa_goo".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular16WhiteA700.copyWith(letterSpacing: 0.20)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 20, top: 7, right: 20, bottom: 11), child: Text("lbl_10_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular12.copyWith(letterSpacing: 0.20))))]))), CustomTextFormField(width: 380, focusNode: FocusNode(), controller: controller.autoLayoutHorizontalController, hintText: "msg_would_you_like".tr, margin: getMargin(left: 24, top: 106, right: 24, bottom: 5), variant: TextFormFieldVariant.edittext6, fontStyle: TextFormFieldFontStyle.UrbanistSemiBold14Gray900, textInputAction: TextInputAction.done, alignment: Alignment.center, prefix: Container(padding: getPadding(left: 22, top: 20, right: 273, bottom: 19), margin: getMargin(), decoration: BoxDecoration(color: ColorConstant.redA20014, borderRadius: BorderRadius.circular(getHorizontalSize(12.00)), border: Border.all(color: ColorConstant.deepOrangeA401, width: getHorizontalSize(1.00))), child: CommonImageView(svgPath: ImageConstant.imgUser16x16)), prefixConstraints: BoxConstraints(minWidth: getSize(16.00), minHeight: getSize(16.00)), suffix: Container(padding: getPadding(left: 30, top: 21, right: 19, bottom: 20), margin: getMargin(right: 68), decoration: BoxDecoration(color: ColorConstant.redA20014, borderRadius: BorderRadius.circular(getHorizontalSize(12.00)), border: Border.all(color: ColorConstant.deepOrangeA401, width: getHorizontalSize(1.00))), child: CommonImageView(svgPath: ImageConstant.imgInstagram14x15)), suffixConstraints: BoxConstraints(minWidth: getHorizontalSize(15.00), minHeight: getVerticalSize(14.00)))]))); } 
onTapArrowleft20() { Get.back(); } 
 }
