import 'controller/qr_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/widgets/custom_button.dart';

class QrCodeScreen extends GetWidget<QrCodeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                1,
                1,
              ),
              end: Alignment(
                0,
                0,
              ),
              colors: [
                ColorConstant.deepOrangeA400,
                ColorConstant.orange600,
              ],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: getSize(
                  300.00,
                ),
                width: getSize(
                  300.00,
                ),
                margin: getMargin(
                  left: 24,
                  top: 227,
                  right: 24,
                ),
                decoration: AppDecoration.fillWhiteA700,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          all: 18,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgVectorBlack900,
                          height: getSize(
                            262.00,
                          ),
                          width: getSize(
                            262.00,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 22,
                  right: 24,
                ),
                child: Text(
                  "lbl_andrew_ainsley".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold24WhiteA700,
                ),
              ),
              CustomButton(
                width: 380,
                text: "lbl_scan_qr_code".tr,
                margin: getMargin(
                  left: 24,
                  top: 197,
                  right: 24,
                  bottom: 5,
                ),
                variant: ButtonVariant.FillDeeporange50,
                shape: ButtonShape.RoundedBorder16,
                padding: ButtonPadding.PaddingAll18,
                fontStyle: ButtonFontStyle.UrbanistRomanBold16DeeporangeA401,
                prefixWidget: Container(
                  margin: getMargin(
                    right: 8,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgCar20x20,
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
