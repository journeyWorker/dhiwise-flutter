import '../controller/messages_controller.dart';
import '../models/listellipse6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';

// ignore: must_be_immutable
class Listellipse6ItemWidget extends StatelessWidget {
  Listellipse6ItemWidget(this.listellipse6ItemModelObj);

  Listellipse6ItemModel listellipse6ItemModelObj;

  var controller = Get.find<MessagesController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      40.00,
                    ),
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgEllipse24,
                    height: getSize(
                      80.00,
                    ),
                    width: getSize(
                      80.00,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 7,
                  right: 16,
                ),
                child: Text(
                  "lbl_aubrey".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistSemiBold14Gray900.copyWith(
                    letterSpacing: 0.20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
