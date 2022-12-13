import '../controller/messages_controller.dart';
import '../models/listellipse_five2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';

// ignore: must_be_immutable
class ListellipseFive2ItemWidget extends StatelessWidget {
  ListellipseFive2ItemWidget(this.listellipseFive2ItemModelObj);

  ListellipseFive2ItemModel listellipseFive2ItemModelObj;

  var controller = Get.find<MessagesController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 12.25,
        bottom: 12.25,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      30.00,
                    ),
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgEllipse5,
                    height: getSize(
                      60.00,
                    ),
                    width: getSize(
                      60.00,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 20,
                    top: 6,
                    bottom: 7,
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
                          "lbl_theresa_varnes".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold18Gray900,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 7,
                        ),
                        child: Text(
                          "msg_hi_morning_too".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtUrbanistRomanMedium14Gray700.copyWith(
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
              left: 114,
              bottom: 6,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: getMargin(
                    left: 7,
                  ),
                  padding: getPadding(
                    left: 10,
                    top: 6,
                    right: 10,
                    bottom: 6,
                  ),
                  decoration:
                      AppDecoration.txtGradientDeeporangeA400Orange600.copyWith(
                    borderRadius: BorderRadiusStyle.txtRoundedBorder12,
                  ),
                  child: Text(
                    "lbl_1".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRegular10.copyWith(
                      letterSpacing: 0.20,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      top: 11,
                    ),
                    child: Text(
                      "lbl_10_002".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanMedium14Gray700.copyWith(
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
    );
  }
}
