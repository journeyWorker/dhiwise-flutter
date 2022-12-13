import 'controller/walkthrough_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/widgets/custom_button.dart';

class WalkthroughThreeScreen extends GetWidget<WalkthroughThreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: getPadding(
                left: 33,
                top: 176,
                right: 32,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.img8,
                height: getVerticalSize(
                  197.00,
                ),
                width: getHorizontalSize(
                  363.00,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: double.infinity,
                margin: getMargin(
                  top: 82,
                ),
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 80,
                        right: 24,
                      ),
                      child: Text(
                        "msg_go_live_with_yo".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanBold40,
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        8.00,
                      ),
                      margin: getMargin(
                        left: 24,
                        top: 93,
                        right: 24,
                      ),
                      child: SmoothIndicator(
                        offset: 0,
                        count: 3,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          spacing: 6,
                          activeDotColor: ColorConstant.deepOrangeA400,
                          dotColor: ColorConstant.gray300,
                          dotHeight: getVerticalSize(
                            8.00,
                          ),
                          dotWidth: getHorizontalSize(
                            8.00,
                          ),
                        ),
                      ),
                    ),
                    CustomButton(
                      width: 380,
                      text: "lbl_get_started".tr,
                      margin: getMargin(
                        left: 24,
                        top: 60,
                        right: 24,
                        bottom: 5,
                      ),
                      variant: ButtonVariant.OutlineDeeporangeA40035,
                      shape: ButtonShape.RoundedBorder16,
                      padding: ButtonPadding.PaddingAll18,
                      fontStyle: ButtonFontStyle.UrbanistRomanBold16,
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
