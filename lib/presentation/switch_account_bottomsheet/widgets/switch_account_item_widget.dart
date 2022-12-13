import '../controller/switch_account_controller.dart';
import '../models/switch_account_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';

// ignore: must_be_immutable
class SwitchAccountItemWidget extends StatelessWidget {
  SwitchAccountItemWidget(this.switchAccountItemModelObj);

  SwitchAccountItemModel switchAccountItemModelObj;

  var controller = Get.find<SwitchAccountController>();

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
                    imagePath: ImageConstant.imgEllipse32,
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
                    top: 8,
                    bottom: 7,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_andrew_ainsley2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanBold18Gray900,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 5,
                          right: 10,
                        ),
                        child: Text(
                          "lbl_andrew_aisnley".tr,
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
            Padding(
              padding: getPadding(
                left: 143,
                top: 16,
                bottom: 16,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgCheckmark24x24,
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
    );
  }
}
