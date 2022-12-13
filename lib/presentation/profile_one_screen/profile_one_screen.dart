import '../profile_one_screen/widgets/profile_one_item_widget.dart';
import 'controller/profile_one_controller.dart';
import 'models/profile_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/widgets/app_bar/appbar_button.dart';
import 'package:ticktter/widgets/app_bar/appbar_button_1.dart';
import 'package:ticktter/widgets/app_bar/appbar_circleimage.dart';
import 'package:ticktter/widgets/app_bar/appbar_image.dart';
import 'package:ticktter/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:ticktter/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:ticktter/widgets/app_bar/custom_app_bar.dart';
import 'package:ticktter/widgets/custom_button.dart';

class ProfileOneScreen extends GetWidget<ProfileOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          height: getVerticalSize(
            882.00,
          ),
          width: size.width,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: CommonImageView(
                  imagePath: ImageConstant.imgImage882x428,
                  height: getVerticalSize(
                    882.00,
                  ),
                  width: getHorizontalSize(
                    428.00,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: getVerticalSize(
                    882.00,
                  ),
                  width: size.width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: getVerticalSize(
                            200.00,
                          ),
                          width: size.width,
                          margin: getMargin(
                            top: 10,
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(
                                0.5,
                                0,
                              ),
                              end: Alignment(
                                0.5,
                                1,
                              ),
                              colors: [
                                ColorConstant.gray90000,
                                ColorConstant.gray900100,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 24,
                            top: 24,
                            right: 24,
                            bottom: 36,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomAppBar(
                                height: getVerticalSize(
                                  56.00,
                                ),
                                leadingWidth: 72,
                                leading: AppbarCircleimage(
                                  imagePath: ImageConstant.imgEllipse18,
                                  margin: getMargin(
                                    left: 24,
                                  ),
                                ),
                                title: Padding(
                                  padding: getPadding(
                                    left: 12,
                                    top: 4.0,
                                    bottom: 4.0,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 4.0,
                                          bottom: 4.0,
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 4.0,
                                                bottom: 4.0,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  AppbarSubtitle3(
                                                    text: "lbl_sarah_wilona".tr,
                                                    margin: getMargin(
                                                      right: 1,
                                                    ),
                                                  ),
                                                  AppbarSubtitle4(
                                                    text:
                                                        "lbl_dancer_singer".tr,
                                                    margin: getMargin(
                                                      top: 6,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            AppbarButton(
                                              margin: getMargin(
                                                left: 12,
                                                top: 1,
                                                bottom: 4,
                                              ),
                                            ),
                                            AppbarButton1(
                                              margin: getMargin(
                                                left: 21,
                                                top: 1,
                                                bottom: 4,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: [
                                  AppbarImage(
                                    height: getSize(
                                      24.00,
                                    ),
                                    width: getSize(
                                      24.00,
                                    ),
                                    svgPath: ImageConstant.imgClose24x24,
                                    margin: getMargin(
                                      left: 12,
                                      top: 12,
                                      right: 24,
                                      bottom: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: getPadding(
                                    top: 12,
                                    right: 127,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CustomButton(
                                        width: 143,
                                        text: "lbl_weekly_ranking".tr,
                                        variant: ButtonVariant.FillGray80099,
                                        shape: ButtonShape.RoundedBorder16,
                                        fontStyle: ButtonFontStyle
                                            .UrbanistRomanMedium12,
                                        prefixWidget: Container(
                                          margin: getMargin(
                                            right: 8,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgStar,
                                          ),
                                        ),
                                      ),
                                      CustomButton(
                                        width: 98,
                                        text: "lbl_explore".tr,
                                        margin: getMargin(
                                          left: 12,
                                        ),
                                        variant: ButtonVariant.FillGray80099,
                                        shape: ButtonShape.RoundedBorder16,
                                        fontStyle: ButtonFontStyle
                                            .UrbanistRomanMedium12,
                                        prefixWidget: Container(
                                          margin: getMargin(
                                            right: 8,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgPlay1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: getPadding(
                                    top: 364,
                                    right: 51,
                                  ),
                                  child: Obx(
                                    () => ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.profileOneModelObj
                                          .value.profileOneItemList.length,
                                      itemBuilder: (context, index) {
                                        ProfileOneItemModel model = controller
                                            .profileOneModelObj
                                            .value
                                            .profileOneItemList[index];
                                        return ProfileOneItemWidget(
                                          model,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 24,
                                  right: 8,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      decoration:
                                          AppDecoration.fillGray901.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder12,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 20,
                                                top: 20,
                                                right: 20,
                                                bottom: 10,
                                              ),
                                              child: Text(
                                                "lbl_comments2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRegular12Gray500
                                                    .copyWith(
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 2,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 2,
                                                right: 2,
                                              ),
                                              child: CommonImageView(
                                                svgPath: ImageConstant.imgUser1,
                                                height: getSize(
                                                  24.00,
                                                ),
                                                width: getSize(
                                                  24.00,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 4,
                                            ),
                                            child: Text(
                                              "lbl_lorem".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium10WhiteA700
                                                  .copyWith(
                                                letterSpacing: 0.20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 2,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CommonImageView(
                                            svgPath: ImageConstant.imgQuestion,
                                            height: getSize(
                                              24.00,
                                            ),
                                            width: getSize(
                                              24.00,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 1,
                                                top: 4,
                                                right: 1,
                                              ),
                                              child: Text(
                                                "lbl_qna".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanMedium10WhiteA700
                                                    .copyWith(
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 2,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CommonImageView(
                                            svgPath: ImageConstant.imgUser2,
                                            height: getSize(
                                              24.00,
                                            ),
                                            width: getSize(
                                              24.00,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 1,
                                                top: 4,
                                                right: 1,
                                              ),
                                              child: Text(
                                                "lbl_rose".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanMedium10WhiteA700
                                                    .copyWith(
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 2,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CommonImageView(
                                            svgPath: ImageConstant.imgUser3,
                                            height: getSize(
                                              24.00,
                                            ),
                                            width: getSize(
                                              24.00,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 2,
                                                top: 4,
                                                right: 2,
                                              ),
                                              child: Text(
                                                "lbl_gift".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanMedium10WhiteA700
                                                    .copyWith(
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 2,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CommonImageView(
                                            svgPath: ImageConstant.imgReply,
                                            height: getSize(
                                              24.00,
                                            ),
                                            width: getSize(
                                              24.00,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 2,
                                                top: 4,
                                                right: 2,
                                              ),
                                              child: Text(
                                                "lbl_5_7k".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanMedium10WhiteA700
                                                    .copyWith(
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: AppDecoration.fillGray90099,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: double.infinity,
                                  margin: getMargin(
                                    top: 453,
                                  ),
                                  decoration:
                                      AppDecoration.outlineGray100.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL40,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 24,
                                          top: 8,
                                          right: 24,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgFrame,
                                          height: getVerticalSize(
                                            3.00,
                                          ),
                                          width: getHorizontalSize(
                                            38.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 24,
                                          top: 24,
                                          right: 24,
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              60.00,
                                            ),
                                          ),
                                          child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse18,
                                            height: getSize(
                                              120.00,
                                            ),
                                            width: getSize(
                                              120.00,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 24,
                                          top: 12,
                                          right: 24,
                                        ),
                                        child: Text(
                                          "lbl_sarah_wilona2".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtUrbanistRomanBold20,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 24,
                                          top: 10,
                                          right: 24,
                                        ),
                                        child: Text(
                                          "lbl_dancer_singer".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtUrbanistRomanMedium14Gray900
                                              .copyWith(
                                            letterSpacing: 0.20,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          1.00,
                                        ),
                                        width: getHorizontalSize(
                                          380.00,
                                        ),
                                        margin: getMargin(
                                          left: 24,
                                          top: 19,
                                          right: 24,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.gray200,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 24,
                                          top: 19,
                                          right: 24,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                                bottom: 1,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "lbl_823".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtUrbanistRomanBold24,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                      padding: getPadding(
                                                        left: 3,
                                                        top: 5,
                                                        right: 3,
                                                      ),
                                                      child: Text(
                                                        "lbl_posts".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtUrbanistRomanMedium14Gray800
                                                            .copyWith(
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: getVerticalSize(
                                                53.00,
                                              ),
                                              width: getHorizontalSize(
                                                1.00,
                                              ),
                                              margin: getMargin(
                                                left: 29,
                                              ),
                                              decoration: BoxDecoration(
                                                color: ColorConstant.gray200,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 18,
                                                top: 1,
                                                bottom: 1,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                      padding: getPadding(
                                                        left: 2,
                                                        right: 3,
                                                      ),
                                                      child: Text(
                                                        "lbl_3_7m".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtUrbanistRomanBold24,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 5,
                                                    ),
                                                    child: Text(
                                                      "lbl_followers".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanMedium14Gray800
                                                          .copyWith(
                                                        letterSpacing: 0.20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: getVerticalSize(
                                                53.00,
                                              ),
                                              width: getHorizontalSize(
                                                1.00,
                                              ),
                                              margin: getMargin(
                                                left: 19,
                                              ),
                                              decoration: BoxDecoration(
                                                color: ColorConstant.gray200,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 18,
                                                top: 1,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 8,
                                                      right: 9,
                                                    ),
                                                    child: Text(
                                                      "lbl_925".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanBold24,
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                      padding: getPadding(
                                                        top: 6,
                                                      ),
                                                      child: Text(
                                                        "lbl_following".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtUrbanistRomanMedium14Gray800
                                                            .copyWith(
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: getVerticalSize(
                                                53.00,
                                              ),
                                              width: getHorizontalSize(
                                                1.00,
                                              ),
                                              margin: getMargin(
                                                left: 19,
                                              ),
                                              decoration: BoxDecoration(
                                                color: ColorConstant.gray200,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 23,
                                                top: 1,
                                                bottom: 1,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      "lbl_39m".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanBold24,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 8,
                                                      top: 5,
                                                      right: 7,
                                                    ),
                                                    child: Text(
                                                      "lbl_likes".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanMedium14Gray800
                                                          .copyWith(
                                                        letterSpacing: 0.20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 24,
                                          top: 24,
                                          right: 24,
                                          bottom: 48,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            CustomButton(
                                              width: 184,
                                              text: "lbl_follow".tr,
                                              shape:
                                                  ButtonShape.RoundedBorder22,
                                              padding:
                                                  ButtonPadding.PaddingAll11,
                                              fontStyle: ButtonFontStyle
                                                  .UrbanistRomanBold18WhiteA700,
                                              prefixWidget: Container(
                                                margin: getMargin(
                                                  right: 8,
                                                ),
                                                child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgSettings,
                                                ),
                                              ),
                                            ),
                                            CustomButton(
                                              width: 184,
                                              text: "lbl_message2".tr,
                                              margin: getMargin(
                                                left: 12,
                                              ),
                                              variant: ButtonVariant
                                                  .OutlineDeeporangeA401,
                                              shape:
                                                  ButtonShape.RoundedBorder22,
                                              padding:
                                                  ButtonPadding.PaddingAll11,
                                              fontStyle: ButtonFontStyle
                                                  .UrbanistRomanBold18DeeporangeA401,
                                              prefixWidget: Container(
                                                margin: getMargin(
                                                  right: 8,
                                                ),
                                                child: CommonImageView(
                                                  svgPath: ImageConstant.imgMap,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
