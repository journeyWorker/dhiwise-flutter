import '../controller/all_activity_controller.dart';
import '../models/listellipse4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';

// ignore: must_be_immutable
class Listellipse4ItemWidget extends StatelessWidget {
  Listellipse4ItemWidget(this.listellipse4ItemModelObj);

  Listellipse4ItemModel listellipse4ItemModelObj;

  var controller = Get.find<AllActivityController>();

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
          ClipRRect(
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                30.00,
              ),
            ),
            child: CommonImageView(
              imagePath: ImageConstant.imgEllipse24,
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
                    "msg_charolette_hanl".tr,
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
                    "msg_leave_a_comment".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanMedium14Gray700.copyWith(
                      letterSpacing: 0.20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 36,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  12.00,
                ),
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgImage60x60,
                height: getSize(
                  60.00,
                ),
                width: getSize(
                  60.00,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
