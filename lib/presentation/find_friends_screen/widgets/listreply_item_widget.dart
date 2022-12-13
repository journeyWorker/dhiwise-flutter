import '../controller/find_friends_controller.dart';
import '../models/listreply_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/widgets/custom_button.dart';
import 'package:ticktter/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListreplyItemWidget extends StatelessWidget {
  ListreplyItemWidget(this.listreplyItemModelObj, {this.onTapBtntf});

  ListreplyItemModel listreplyItemModelObj;

  var controller = Get.find<FindFriendsController>();

  VoidCallback? onTapBtntf;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 12.0,
        right: 1,
        bottom: 12.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomIconButton(
            height: 60,
            width: 60,
            variant: IconButtonVariant.FillDeeporange50,
            onTap: () {
              onTapBtntf!();
            },
            child: CommonImageView(
              svgPath: ImageConstant.imgReply60x60,
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
                    "lbl_invite_friends".tr,
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
                    "msg_stay_connected".tr,
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
          CustomButton(
            width: 68,
            text: "lbl_invite".tr,
            margin: getMargin(
              left: 47,
              top: 14,
              bottom: 14,
            ),
          ),
        ],
      ),
    );
  }
}
