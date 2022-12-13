import '../controller/followers_controller.dart';
import '../models/followers_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/widgets/custom_button.dart';

// ignore: must_be_immutable
class FollowersItemWidget extends StatelessWidget {
  FollowersItemWidget(this.followersItemModelObj);

  FollowersItemModel followersItemModelObj;

  var controller = Get.find<FollowersController>();

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
                  imagePath: ImageConstant.imgEllipse48x48,
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
                        "msg_darcel_ballenti".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanBold18Gray900,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 6,
                      ),
                      child: Text(
                        "msg_darcelballentin".tr,
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
              left: 72,
              top: 14,
              bottom: 14,
            ),
          ),
        ],
      ),
    );
  }
}
