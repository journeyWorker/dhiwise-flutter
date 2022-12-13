import '../all_activity_page/widgets/listellipse4_item_widget.dart';
import '../all_activity_page/widgets/listellipse_five_item_widget.dart';
import '../all_activity_page/widgets/listellipse_three_item_widget.dart';
import 'controller/all_activity_controller.dart';
import 'models/all_activity_model.dart';
import 'models/listellipse4_item_model.dart';
import 'models/listellipse_five_item_model.dart';
import 'models/listellipse_three_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/widgets/app_bar/appbar_dropdown_2.dart';
import 'package:ticktter/widgets/app_bar/appbar_image.dart';
import 'package:ticktter/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class AllActivityPage extends StatelessWidget {
  AllActivityController controller =
      Get.put(AllActivityController(AllActivityModel().obs));

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
          leading: AppbarImage(
            height: getSize(
              32.00,
            ),
            width: getSize(
              32.00,
            ),
            imagePath: ImageConstant.imgFrame2,
            margin: getMargin(
              left: 24,
              top: 8,
              bottom: 12,
            ),
          ),
          centerTitle: true,
          title: AppbarDropdown2(
            hintText: "lbl_all_activity".tr,
            items: controller.allActivityModelObj.value.dropdownItemList,
            onTap: (value) {
              controller.onSelected(value);
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
          child: Padding(
            padding: getPadding(
              left: 24,
              top: 27.0,
              right: 24,
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
                    "lbl_today".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBold20,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 22,
                  ),
                  child: Obx(
                    () => ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.allActivityModelObj.value
                          .listellipse4ItemList.length,
                      itemBuilder: (context, index) {
                        Listellipse4ItemModel model = controller
                            .allActivityModelObj
                            .value
                            .listellipse4ItemList[index];
                        return Listellipse4ItemWidget(
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
                  ),
                  child: Obx(
                    () => ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.allActivityModelObj.value
                          .listellipseThreeItemList.length,
                      itemBuilder: (context, index) {
                        ListellipseThreeItemModel model = controller
                            .allActivityModelObj
                            .value
                            .listellipseThreeItemList[index];
                        return ListellipseThreeItemWidget(
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
                      itemCount: controller.allActivityModelObj.value
                          .listellipseFiveItemList.length,
                      itemBuilder: (context, index) {
                        ListellipseFiveItemModel model = controller
                            .allActivityModelObj
                            .value
                            .listellipseFiveItemList[index];
                        return ListellipseFiveItemWidget(
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
      ),
    );
  }
}
