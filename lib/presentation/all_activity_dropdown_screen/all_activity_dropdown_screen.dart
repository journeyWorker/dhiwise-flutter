import '../all_activity_dropdown_screen/widgets/listellipse5_item_widget.dart';
import '../all_activity_dropdown_screen/widgets/listellipse_five1_item_widget.dart';
import '../all_activity_dropdown_screen/widgets/listellipse_three1_item_widget.dart';
import 'controller/all_activity_dropdown_controller.dart';
import 'models/listellipse5_item_model.dart';
import 'models/listellipse_five1_item_model.dart';
import 'models/listellipse_three1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/presentation/all_activity_page/all_activity_page.dart';
import 'package:ticktter/presentation/home_page/home_page.dart';
import 'package:ticktter/presentation/profile_two_page/profile_two_page.dart';
import 'package:ticktter/presentation/trending_sounds_tab_container_page/trending_sounds_tab_container_page.dart';
import 'package:ticktter/widgets/app_bar/appbar_dropdown_2.dart';
import 'package:ticktter/widgets/app_bar/appbar_image.dart';
import 'package:ticktter/widgets/app_bar/custom_app_bar.dart';
import 'package:ticktter/widgets/custom_bottom_bar.dart';
import 'package:ticktter/widgets/custom_drop_down.dart';

class AllActivityDropdownScreen
    extends GetWidget<AllActivityDropdownController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 56,
          leading: Container(
            margin: getMargin(
              left: 24,
              top: 10.0,
              bottom: 14.0,
            ),
            decoration: AppDecoration.gradientDeeporangeA400Orange600.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 7,
                      top: 9,
                      right: 7,
                      bottom: 10,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgVector,
                      height: getVerticalSize(
                        12.00,
                      ),
                      width: getHorizontalSize(
                        17.00,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          centerTitle: true,
          title: AppbarDropdown2(
            hintText: "lbl_all_activity".tr,
            items:
                controller.allActivityDropdownModelObj.value.dropdownItemList1,
            onTap: (value) {
              controller.onSelected1(value);
            },
          ),
          actions: [
            AppbarImage(
              height: getSize(
                28.00,
              ),
              width: getSize(
                28.00,
              ),
              svgPath: ImageConstant.imgRewind,
              margin: getMargin(
                left: 24,
                top: 10,
                right: 24,
                bottom: 14,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: getPadding(
            bottom: 10,
          ),
          child: Container(
            height: getVerticalSize(
              882.00,
            ),
            width: size.width,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: getHorizontalSize(
                      404.00,
                    ),
                    margin: getMargin(
                      left: 10,
                      top: 10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: getPadding(
                            right: 10,
                          ),
                          child: Text(
                            "lbl_today".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 22,
                            right: 10,
                          ),
                          child: Obx(
                            () => ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.allActivityDropdownModelObj
                                  .value.listellipse5ItemList.length,
                              itemBuilder: (context, index) {
                                Listellipse5ItemModel model = controller
                                    .allActivityDropdownModelObj
                                    .value
                                    .listellipse5ItemList[index];
                                return Listellipse5ItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 26,
                            right: 10,
                          ),
                          child: Text(
                            "lbl_yesterday".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 22,
                            right: 10,
                          ),
                          child: Obx(
                            () => ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.allActivityDropdownModelObj
                                  .value.listellipseThree1ItemList.length,
                              itemBuilder: (context, index) {
                                ListellipseThree1ItemModel model = controller
                                    .allActivityDropdownModelObj
                                    .value
                                    .listellipseThree1ItemList[index];
                                return ListellipseThree1ItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 23,
                            right: 10,
                          ),
                          child: Text(
                            "lbl_this_week".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 24,
                          ),
                          child: Obx(
                            () => ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.allActivityDropdownModelObj
                                  .value.listellipseFive1ItemList.length,
                              itemBuilder: (context, index) {
                                ListellipseFive1ItemModel model = controller
                                    .allActivityDropdownModelObj
                                    .value
                                    .listellipseFive1ItemList[index];
                                return ListellipseFive1ItemWidget(
                                  model,
                                );
                              },
                            ),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: double.infinity,
                            margin: getMargin(
                              bottom: 470,
                            ),
                            decoration: AppDecoration.fillWhiteA700,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 24,
                                      top: 8,
                                      right: 24,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            bottom: 1,
                                          ),
                                          child: CommonImageView(
                                            imagePath: ImageConstant.imgFrame2,
                                            height: getSize(
                                              32.00,
                                            ),
                                            width: getSize(
                                              32.00,
                                            ),
                                          ),
                                        ),
                                        CustomDropDown(
                                          width: 153,
                                          focusNode: FocusNode(),
                                          icon: Container(
                                            margin: getMargin(
                                              left: 8,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowdownGray900,
                                            ),
                                          ),
                                          hintText: "lbl_all_activity".tr,
                                          margin: getMargin(
                                            top: 4,
                                          ),
                                          fontStyle: DropDownFontStyle
                                              .UrbanistRomanBold24,
                                          items: controller
                                              .allActivityDropdownModelObj
                                              .value
                                              .dropdownItemList,
                                          onChanged: (value) {
                                            controller.onSelected(value);
                                          },
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 2,
                                            bottom: 3,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgRewind,
                                            height: getSize(
                                              28.00,
                                            ),
                                            width: getSize(
                                              28.00,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 24,
                                      top: 31,
                                      right: 24,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CommonImageView(
                                              svgPath: ImageConstant
                                                  .imgIconlycurvedactivity,
                                              height: getSize(
                                                28.00,
                                              ),
                                              width: getSize(
                                                28.00,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 20,
                                                top: 5,
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "lbl_all_activity".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistSemiBold18Gray900
                                                    .copyWith(
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        CommonImageView(
                                          svgPath:
                                              ImageConstant.imgCheckmark24x24,
                                          height: getSize(
                                            28.00,
                                          ),
                                          width: getSize(
                                            28.00,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 24,
                                    top: 20,
                                    right: 24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CommonImageView(
                                        svgPath: ImageConstant.imgRefresh,
                                        height: getSize(
                                          28.00,
                                        ),
                                        width: getSize(
                                          28.00,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 20,
                                          top: 2,
                                          bottom: 3,
                                        ),
                                        child: Text(
                                          "lbl_likes".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtUrbanistSemiBold18Gray900
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
                                    left: 24,
                                    top: 20,
                                    right: 24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CommonImageView(
                                        svgPath: ImageConstant.imgClock28x28,
                                        height: getSize(
                                          28.00,
                                        ),
                                        width: getSize(
                                          28.00,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 20,
                                          top: 3,
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "lbl_comments".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtUrbanistSemiBold18Gray900
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
                                    left: 24,
                                    top: 20,
                                    right: 24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CommonImageView(
                                        svgPath: ImageConstant.imgFile,
                                        height: getSize(
                                          28.00,
                                        ),
                                        width: getSize(
                                          28.00,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 20,
                                          top: 3,
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "lbl_q_a".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtUrbanistSemiBold18Gray900
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
                                    left: 24,
                                    top: 20,
                                    right: 24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CommonImageView(
                                        svgPath: ImageConstant.imgUser28x28,
                                        height: getSize(
                                          28.00,
                                        ),
                                        width: getSize(
                                          28.00,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 20,
                                          top: 5,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "lbl_mentions_tags".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtUrbanistSemiBold18Gray900
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
                                    left: 24,
                                    top: 20,
                                    right: 24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CommonImageView(
                                        svgPath: ImageConstant.imgUser10,
                                        height: getSize(
                                          28.00,
                                        ),
                                        width: getSize(
                                          28.00,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 20,
                                          top: 2,
                                          bottom: 3,
                                        ),
                                        child: Text(
                                          "lbl_followers".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtUrbanistSemiBold18Gray900
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
                                    left: 24,
                                    top: 20,
                                    right: 24,
                                    bottom: 24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CommonImageView(
                                        svgPath: ImageConstant.imgInfo,
                                        height: getSize(
                                          28.00,
                                        ),
                                        width: getSize(
                                          28.00,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 20,
                                          top: 3,
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "lbl_from_zuzu".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtUrbanistSemiBold18Gray900
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
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            controller.type.value = type;
          },
        ),
      ),
    );
  }

  ///Handling view based on bottom click actions
  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return HomePage();
      case BottomBarEnum.Discover:
        return TrendingSoundsTabContainerPage();
      case BottomBarEnum.Inbox:
        return AllActivityPage();
      case BottomBarEnum.Profile:
        return ProfileTwoPage();
      default:
        return getDefaultWidget();
    }
  }
}
