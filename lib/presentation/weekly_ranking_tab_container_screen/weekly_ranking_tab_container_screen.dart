import '../weekly_ranking_tab_container_screen/widgets/listellipse2_item_widget.dart';
import 'controller/weekly_ranking_tab_container_controller.dart';
import 'models/listellipse2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/presentation/rising_stars_page/rising_stars_page.dart';
import 'package:ticktter/presentation/weekly_ranking_page/weekly_ranking_page.dart';
import 'package:ticktter/widgets/app_bar/appbar_button.dart';
import 'package:ticktter/widgets/app_bar/appbar_button_1.dart';
import 'package:ticktter/widgets/app_bar/appbar_circleimage.dart';
import 'package:ticktter/widgets/app_bar/appbar_image.dart';
import 'package:ticktter/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:ticktter/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:ticktter/widgets/app_bar/custom_app_bar.dart';
import 'package:ticktter/widgets/custom_button.dart';

class WeeklyRankingTabContainerScreen
    extends GetWidget<WeeklyRankingTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 72,
          leading: AppbarCircleimage(
            imagePath: ImageConstant.imgEllipse18,
            margin: getMargin(
              left: 24,
              top: 4,
              bottom: 4,
            ),
          ),
          title: Padding(
            padding: getPadding(
              left: 12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AppbarSubtitle3(
                          text: "lbl_sarah_wilona".tr,
                          margin: getMargin(
                            right: 1,
                          ),
                        ),
                        AppbarSubtitle4(
                          text: "lbl_dancer_singer".tr,
                          margin: getMargin(
                            top: 6,
                          ),
                        ),
                      ],
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
                top: 16,
                right: 24,
                bottom: 16,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
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
                      alignment: Alignment.bottomCenter,
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
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: getPadding(
                              left: 24,
                              top: 36,
                              right: 24,
                              bottom: 36,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    right: 10,
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
                                Padding(
                                  padding: getPadding(
                                    top: 364,
                                    right: 10,
                                  ),
                                  child: Obx(
                                    () => ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller
                                          .weeklyRankingTabContainerModelObj
                                          .value
                                          .listellipse2ItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        Listellipse2ItemModel model = controller
                                            .weeklyRankingTabContainerModelObj
                                            .value
                                            .listellipse2ItemList[index];
                                        return Listellipse2ItemWidget(
                                          model,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                                  svgPath:
                                                      ImageConstant.imgUser1,
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
                                              svgPath:
                                                  ImageConstant.imgQuestion,
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                              svgPath: ImageConstant.imgUser5,
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                      top: 362,
                                    ),
                                    decoration:
                                        AppDecoration.outlineGray100.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL40,
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
                                        ),
                                        Container(
                                          width: getHorizontalSize(
                                            318.00,
                                          ),
                                          margin: getMargin(
                                            left: 24,
                                            top: 27,
                                            right: 24,
                                          ),
                                          child: TabBar(
                                            controller: controller
                                                .autoLayoutHorizontalController,
                                            tabs: [
                                              Tab(
                                                text: "lbl_weekly_ranking".tr,
                                              ),
                                              Tab(
                                                text: "lbl_rising_stars".tr,
                                              ),
                                            ],
                                            labelColor:
                                                ColorConstant.deepOrangeA401,
                                            unselectedLabelColor:
                                                ColorConstant.gray500,
                                          ),
                                        ),
                                        Container(
                                          margin: getMargin(
                                            left: 24,
                                            top: 24,
                                            right: 24,
                                            bottom: 406,
                                          ),
                                          height: getVerticalSize(
                                            396.00,
                                          ),
                                          child: TabBarView(
                                            controller: controller
                                                .autoLayoutHorizontalController,
                                            children: [
                                              WeeklyRankingPage(),
                                              RisingStarsPage(),
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
      ),
    );
  }
}
