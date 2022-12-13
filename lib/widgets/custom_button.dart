import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.prefixWidget,
      this.suffixWidget,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  Widget? prefixWidget;

  Widget? suffixWidget;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixWidget ?? SizedBox(),
            Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: _setFontStyle(),
            ),
            suffixWidget ?? SizedBox(),
          ],
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll18:
        return getPadding(
          all: 18,
        );
      case ButtonPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      case ButtonPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      case ButtonPadding.PaddingAll4:
        return getPadding(
          all: 4,
        );
      default:
        return getPadding(
          all: 7,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineDeeporangeA40035:
        return ColorConstant.deepOrangeA401;
      case ButtonVariant.OutlineGray200:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillBluegray100:
        return ColorConstant.bluegray100;
      case ButtonVariant.FillDeeporange50:
        return ColorConstant.deepOrange50;
      case ButtonVariant.FillGray80099:
        return ColorConstant.gray80099;
      case ButtonVariant.FillGray6001e:
        return ColorConstant.gray6001e;
      case ButtonVariant.OutlineDeeporangeA40035_1:
        return ColorConstant.red500;
      case ButtonVariant.OutlineGray600:
      case ButtonVariant.OutlineDeeporangeA401:
        return null;
      default:
        return ColorConstant.deepOrangeA401;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray200:
        return Border.all(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray600:
        return Border.all(
          color: ColorConstant.gray600,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineDeeporangeA401:
        return Border.all(
          color: ColorConstant.deepOrangeA401,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.FillDeeporangeA401:
      case ButtonVariant.OutlineDeeporangeA40035:
      case ButtonVariant.FillBluegray100:
      case ButtonVariant.FillDeeporange50:
      case ButtonVariant.FillGray80099:
      case ButtonVariant.FillGray6001e:
      case ButtonVariant.OutlineDeeporangeA40035_1:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case ButtonShape.RoundedBorder22:
        return BorderRadius.circular(
          getHorizontalSize(
            22.00,
          ),
        );
      case ButtonShape.CircleBorder19:
        return BorderRadius.circular(
          getHorizontalSize(
            19.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineDeeporangeA40035:
        return [
          BoxShadow(
            color: ColorConstant.deepOrangeA40035,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              4,
              8,
            ),
          )
        ];
      case ButtonVariant.OutlineDeeporangeA40035_1:
        return [
          BoxShadow(
            color: ColorConstant.deepOrangeA40035,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              4,
              8,
            ),
          )
        ];
      case ButtonVariant.FillDeeporangeA401:
      case ButtonVariant.OutlineGray200:
      case ButtonVariant.FillBluegray100:
      case ButtonVariant.OutlineGray600:
      case ButtonVariant.FillDeeporange50:
      case ButtonVariant.OutlineDeeporangeA401:
      case ButtonVariant.FillGray80099:
      case ButtonVariant.FillGray6001e:
        return null;
      default:
        return null;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.UrbanistRomanBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UrbanistSemiBold16:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistRomanBold16Gray600:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UrbanistRomanBold18:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UrbanistRomanBold18WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UrbanistRomanBold16DeeporangeA401:
        return TextStyle(
          color: ColorConstant.deepOrangeA401,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UrbanistSemiBold14:
        return TextStyle(
          color: ColorConstant.deepOrangeA401,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistSemiBold16WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistSemiBold16DeeporangeA401:
        return TextStyle(
          color: ColorConstant.deepOrangeA401,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistRomanMedium12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.UrbanistRomanBold18DeeporangeA401:
        return TextStyle(
          color: ColorConstant.deepOrangeA401,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UrbanistRomanBold14:
        return TextStyle(
          color: ColorConstant.deepOrangeA401,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UrbanistSemiBold14Gray500:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistSemiBold10:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder8,
  RoundedBorder16,
  RoundedBorder22,
  CircleBorder19,
}
enum ButtonPadding {
  PaddingAll7,
  PaddingAll18,
  PaddingAll15,
  PaddingAll11,
  PaddingAll4,
}
enum ButtonVariant {
  FillDeeporangeA401,
  OutlineDeeporangeA40035,
  OutlineGray200,
  FillBluegray100,
  OutlineGray600,
  FillDeeporange50,
  OutlineDeeporangeA401,
  FillGray80099,
  FillGray6001e,
  OutlineDeeporangeA40035_1,
}
enum ButtonFontStyle {
  UrbanistSemiBold14WhiteA700,
  UrbanistRomanBold16,
  UrbanistSemiBold16,
  UrbanistRomanBold16Gray600,
  UrbanistRomanBold18,
  UrbanistRomanBold18WhiteA700,
  UrbanistRomanBold16DeeporangeA401,
  UrbanistSemiBold14,
  UrbanistSemiBold16WhiteA700,
  UrbanistSemiBold16DeeporangeA401,
  UrbanistRomanMedium12,
  UrbanistRomanBold18DeeporangeA401,
  UrbanistRomanBold14,
  UrbanistSemiBold14Gray500,
  UrbanistSemiBold10,
}
