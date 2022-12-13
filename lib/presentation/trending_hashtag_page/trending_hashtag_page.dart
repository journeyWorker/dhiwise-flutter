import '../trending_hashtag_page/widgets/listplay2_item_widget.dart';
import '../trending_hashtag_page/widgets/listplay_three1_item_widget.dart';
import 'controller/trending_hashtag_controller.dart';
import 'models/listplay2_item_model.dart';
import 'models/listplay_three1_item_model.dart';
import 'models/trending_hashtag_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/widgets/custom_drop_down.dart';
import 'package:ticktter/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class TrendingHashtagPage extends StatelessWidget {
  TrendingHashtagController controller =
      Get.put(TrendingHashtagController(TrendingHashtagModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomIconButton(
                        height: 56,
                        width: 56,
                        child: CommonImageView(
                          svgPath: ImageConstant.imgAirplane,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 6,
                          bottom: 5,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  right: 4,
                                ),
                                child: Text(
                                  "lbl_amazingfood".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold18Gray900,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 5,
                              ),
                              child: Text(
                                "msg_trending_hashta".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanMedium14Gray700
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
                  CustomDropDown(
                    width: 93,
                    focusNode: FocusNode(),
                    icon: Container(
                      margin: getMargin(
                        left: 21,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgArrowdownDeepOrangeA401,
                      ),
                    ),
                    hintText: "lbl_827_5m".tr,
                    margin: getMargin(
                      top: 16,
                      bottom: 16,
                    ),
                    items: controller
                        .trendingHashtagModelObj.value.dropdownItemList,
                    onChanged: (value) {
                      controller.onSelected(value);
                    },
                  ),
                ],
              ),
              Container(
                height: getVerticalSize(
                  220.00,
                ),
                width: getHorizontalSize(
                  380.00,
                ),
                child: Obx(
                  () => ListView.builder(
                    padding: getPadding(
                      top: 20,
                    ),
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: controller
                        .trendingHashtagModelObj.value.listplay2ItemList.length,
                    itemBuilder: (context, index) {
                      Listplay2ItemModel model = controller
                          .trendingHashtagModelObj
                          .value
                          .listplay2ItemList[index];
                      return Listplay2ItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomIconButton(
                          height: 56,
                          width: 56,
                          child: CommonImageView(
                            svgPath: ImageConstant.imgAirplane,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 6,
                            bottom: 5,
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
                                child: Text(
                                  "lbl_beautyful".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold18Gray900,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                ),
                                child: Text(
                                  "msg_trending_hashta".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtUrbanistRomanMedium14Gray700
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
                    CustomDropDown(
                      width: 93,
                      focusNode: FocusNode(),
                      icon: Container(
                        margin: getMargin(
                          left: 21,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgArrowdownDeepOrangeA401,
                        ),
                      ),
                      hintText: "lbl_827_5m".tr,
                      margin: getMargin(
                        top: 16,
                        bottom: 16,
                      ),
                      items: controller
                          .trendingHashtagModelObj.value.dropdownItemList1,
                      onChanged: (value) {
                        controller.onSelected1(value);
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  220.00,
                ),
                width: getHorizontalSize(
                  380.00,
                ),
                child: Obx(
                  () => ListView.builder(
                    padding: getPadding(
                      top: 20,
                    ),
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: controller.trendingHashtagModelObj.value
                        .listplayThree1ItemList.length,
                    itemBuilder: (context, index) {
                      ListplayThree1ItemModel model = controller
                          .trendingHashtagModelObj
                          .value
                          .listplayThree1ItemList[index];
                      return ListplayThree1ItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomIconButton(
                          height: 56,
                          width: 56,
                          child: CommonImageView(
                            svgPath: ImageConstant.imgAirplane,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 6,
                            bottom: 5,
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
                                child: Text(
                                  "lbl_songforyou".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold18Gray900,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                ),
                                child: Text(
                                  "msg_trending_hashta".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtUrbanistRomanMedium14Gray700
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
                    CustomDropDown(
                      width: 93,
                      focusNode: FocusNode(),
                      icon: Container(
                        margin: getMargin(
                          left: 21,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgArrowdownDeepOrangeA401,
                        ),
                      ),
                      hintText: "lbl_827_5m".tr,
                      margin: getMargin(
                        top: 16,
                        bottom: 16,
                      ),
                      items: controller
                          .trendingHashtagModelObj.value.dropdownItemList2,
                      onChanged: (value) {
                        controller.onSelected2(value);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
