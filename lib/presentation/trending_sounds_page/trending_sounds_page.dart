import '../trending_sounds_page/widgets/listplay1_item_widget.dart';
import '../trending_sounds_page/widgets/listplay_three_item_widget.dart';
import 'controller/trending_sounds_controller.dart';
import 'models/listplay1_item_model.dart';
import 'models/listplay_three_item_model.dart';
import 'models/trending_sounds_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/widgets/custom_drop_down.dart';

// ignore_for_file: must_be_immutable
class TrendingSoundsPage extends StatelessWidget {
  TrendingSoundsController controller =
      Get.put(TrendingSoundsController(TrendingSoundsModel().obs));

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
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            16.00,
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgEllipse11,
                          height: getSize(
                            80.00,
                          ),
                          width: getSize(
                            80.00,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 2,
                          bottom: 4,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_favorite_girl".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold18Gray900,
                            ),
                            Padding(
                              padding: getPadding(
                                top: 7,
                                right: 10,
                              ),
                              child: Text(
                                "lbl_justin_bieber".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanMedium14Gray700
                                    .copyWith(
                                  letterSpacing: 0.20,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 9,
                                right: 10,
                              ),
                              child: Text(
                                "lbl_01_00".tr,
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
                    width: 92,
                    focusNode: FocusNode(),
                    icon: Container(
                      margin: getMargin(
                        left: 21,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgArrowdownDeepOrangeA401,
                      ),
                    ),
                    hintText: "lbl_387_5m".tr,
                    margin: getMargin(
                      top: 28,
                      bottom: 28,
                    ),
                    items: controller
                        .trendingSoundsModelObj.value.dropdownItemList,
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
                        .trendingSoundsModelObj.value.listplay1ItemList.length,
                    itemBuilder: (context, index) {
                      Listplay1ItemModel model = controller
                          .trendingSoundsModelObj
                          .value
                          .listplay1ItemList[index];
                      return Listplay1ItemWidget(
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
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              16.00,
                            ),
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgEllipse11,
                            height: getSize(
                              80.00,
                            ),
                            width: getSize(
                              80.00,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 4,
                            bottom: 4,
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
                                  "lbl_yummy".tr,
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
                                  "lbl_justin_bieber".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtUrbanistRomanMedium14Gray700
                                      .copyWith(
                                    letterSpacing: 0.20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                  right: 10,
                                ),
                                child: Text(
                                  "lbl_00_45".tr,
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
                      hintText: "lbl_289_4m".tr,
                      margin: getMargin(
                        top: 28,
                        bottom: 28,
                      ),
                      items: controller
                          .trendingSoundsModelObj.value.dropdownItemList1,
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
                    itemCount: controller.trendingSoundsModelObj.value
                        .listplayThreeItemList.length,
                    itemBuilder: (context, index) {
                      ListplayThreeItemModel model = controller
                          .trendingSoundsModelObj
                          .value
                          .listplayThreeItemList[index];
                      return ListplayThreeItemWidget(
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
    );
  }
}
