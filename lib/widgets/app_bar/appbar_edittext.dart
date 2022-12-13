import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class AppbarEdittext extends StatelessWidget {
  AppbarEdittext({this.hintText, this.controller, this.margin});

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomTextFormField(
        width: 160,
        focusNode: FocusNode(),
        controller: controller,
        hintText: "lbl_following".tr,
        variant: TextFormFieldVariant.UnderLineGray200,
        fontStyle: TextFormFieldFontStyle.UrbanistSemiBold18,
      ),
    );
  }
}
