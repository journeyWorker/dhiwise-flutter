import 'controller/total_likes_controller.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class TotalLikesDialog extends StatelessWidget {
  TotalLikesDialog(this.controller);

  TotalLikesController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              left: 32,
              top: 31,
              right: 32,
            ),
            child: Text(
              "lbl_27m_total_likes".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanBold24DeeporangeA401,
            ),
          ),
          Container(
            width: getHorizontalSize(
              265.00,
            ),
            margin: getMargin(
              left: 32,
              top: 21,
              right: 32,
            ),
            child: Text(
              "msg_jenny_wilson_re".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtUrbanistRegular16.copyWith(
                letterSpacing: 0.20,
              ),
            ),
          ),
          CustomButton(
            width: 276,
            text: "lbl_ok".tr,
            margin: getMargin(
              left: 32,
              top: 36,
              right: 32,
              bottom: 5,
            ),
            shape: ButtonShape.RoundedBorder16,
            padding: ButtonPadding.PaddingAll18,
            fontStyle: ButtonFontStyle.UrbanistRomanBold16,
          ),
        ],
      ),
    );
  }
}
