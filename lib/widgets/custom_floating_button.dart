import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';

class CustomFloatingButton extends StatelessWidget {
  CustomFloatingButton(
      {this.shape,
      this.variant,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.child});

  FloatingButtonShape? shape;

  FloatingButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildFabWidget(),
          )
        : _buildFabWidget();
  }

  _buildFabWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FloatingActionButton(
        onPressed: onTap,
        child: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          decoration: _buildDecoration(),
          child: child,
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
    );
  }

  _setBorder() {
    switch (variant) {
      default:
        return Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            6.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            40.00,
          ),
        );
    }
  }

  _setGradient() {
    switch (variant) {
      default:
        return LinearGradient(
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
        );
    }
  }
}

enum FloatingButtonShape {
  CircleBorder40,
}
enum FloatingButtonVariant {
  OutlineWhiteA700,
}
