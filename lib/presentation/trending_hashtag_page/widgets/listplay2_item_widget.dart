import '../controller/trending_hashtag_controller.dart';
import '../models/listplay2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';

// ignore: must_be_immutable
class Listplay2ItemWidget extends StatelessWidget {
  Listplay2ItemWidget(this.listplay2ItemModelObj);

  Listplay2ItemModel listplay2ItemModelObj;

  var controller = Get.find<TrendingHashtagController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        height: getVerticalSize(
          200.00,
        ),
        width: getHorizontalSize(
          121.00,
        ),
        margin: getMargin(
          right: 8.669998,
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    12.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgImage29,
                  height: getVerticalSize(
                    200.00,
                  ),
                  width: getHorizontalSize(
                    121.00,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: getMargin(
                  all: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      8.00,
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          8.00,
                        ),
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgPlay16x16,
                        height: getSize(
                          16.00,
                        ),
                        width: getSize(
                          16.00,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 4,
                        top: 2,
                        bottom: 1,
                      ),
                      child: Text(
                        "lbl_728_5k".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistSemiBold10.copyWith(
                          letterSpacing: 0.20,
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
    );
  }
}
