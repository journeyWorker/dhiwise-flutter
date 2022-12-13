import '../controller/settings_controller.dart';
import '../models/listvideocamera_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';

// ignore: must_be_immutable
class ListvideocameraItemWidget extends StatelessWidget {
  ListvideocameraItemWidget(this.listvideocameraItemModelObj);

  ListvideocameraItemModel listvideocameraItemModelObj;

  var controller = Get.find<SettingsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              CommonImageView(
                svgPath: ImageConstant.imgVideocamera,
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
                  "msg_content_prefere".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(
                    letterSpacing: 0.20,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: getPadding(
              left: 145,
              top: 4,
              bottom: 4,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgArrowdownGray90020x20,
              height: getSize(
                20.00,
              ),
              width: getSize(
                20.00,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
