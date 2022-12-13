import '../controller/posts_add_details_information_controller.dart';
import '../models/listuser_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';

// ignore: must_be_immutable
class ListuserItemWidget extends StatelessWidget {
  ListuserItemWidget(this.listuserItemModelObj);

  ListuserItemModel listuserItemModelObj;

  var controller = Get.find<PostsAddDetailsInformationController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 10.0,
        bottom: 10.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  "lbl_tag_people".tr,
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
              left: 221,
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
