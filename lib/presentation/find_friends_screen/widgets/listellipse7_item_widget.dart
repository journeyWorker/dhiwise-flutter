import '../controller/find_friends_controller.dart';
import '../models/listellipse7_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/widgets/custom_button.dart';

// ignore: must_be_immutable
class Listellipse7ItemWidget extends StatelessWidget {
  Listellipse7ItemWidget(this.listellipse7ItemModelObj);

  Listellipse7ItemModel listellipse7ItemModelObj;

  var controller = Get.find<FindFriendsController>();

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
                        "lbl_elanor_pera".tr,
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
                        "msg_elanorpera_94".tr,
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
              left: 66,
              top: 14,
              bottom: 14,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomButton(
                  width: 73,
                  text: "lbl_follow".tr,
                ),
                Padding(
                  padding: getPadding(
                    left: 10,
                    top: 4,
                    bottom: 4,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgClose60x60,
                    height: getSize(
                      24.00,
                    ),
                    width: getSize(
                      24.00,
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
