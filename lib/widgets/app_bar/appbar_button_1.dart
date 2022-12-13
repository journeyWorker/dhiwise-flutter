import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/widgets/custom_button.dart';

// ignore: must_be_immutable
class AppbarButton1 extends StatelessWidget {
  AppbarButton1({this.margin, this.onTap});

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomButton(
          width: 87,
          text: "lbl_3_6k".tr,
          variant: ButtonVariant.FillGray80099,
          shape: ButtonShape.RoundedBorder16,
          prefixWidget: Container(
            margin: getMargin(
              right: 8,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgUser20x20,
            ),
          ),
        ),
      ),
    );
  }
}
