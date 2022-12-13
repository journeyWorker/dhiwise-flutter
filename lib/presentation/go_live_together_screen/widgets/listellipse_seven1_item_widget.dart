import '../controller/go_live_together_controller.dart';
import '../models/listellipse_seven1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/widgets/custom_button.dart';

// ignore: must_be_immutable
class ListellipseSeven1ItemWidget extends StatelessWidget {
  ListellipseSeven1ItemWidget(this.listellipseSeven1ItemModelObj);

  ListellipseSeven1ItemModel listellipseSeven1ItemModelObj;

  var controller = Get.find<GoLiveTogetherController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 12.0,
          bottom: 12.0,
        ),
        child: Row(
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
                      30.00,
                    ),
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgEllipse9,
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
                    bottom: 6,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "msg_chantal_shelbur".tr,
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
                          "lbl_9_min_ago".tr,
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
            CustomButton(
              width: 73,
              text: "lbl_follow".tr,
              margin: getMargin(
                left: 75,
                top: 14,
                bottom: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
