import '../controller/settings_controller.dart';
import '../models/listuser2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';

// ignore: must_be_immutable
class Listuser2ItemWidget extends StatelessWidget {
  Listuser2ItemWidget(this.listuser2ItemModelObj);

  Listuser2ItemModel listuser2ItemModelObj;

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
                  "lbl_manage_account".tr,
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
              left: 172,
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
