import 'controller/search_type_keyword_controller.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/widgets/custom_search_view.dart';

class SearchTypeKeywordScreen extends GetWidget<SearchTypeKeywordController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSearchView(
              width: 380,
              focusNode: FocusNode(),
              controller: controller.stateActiveSearchController,
              hintText: "lbl_ariana".tr,
              margin: getMargin(
                left: 24,
                top: 24,
                right: 24,
              ),
              variant: SearchViewVariant.OutlineDeeporangeA401,
              fontStyle: SearchViewFontStyle.UrbanistSemiBold14,
              alignment: Alignment.center,
              prefix: Container(
                margin: getMargin(
                  left: 20,
                  top: 18,
                  right: 12,
                  bottom: 18,
                ),
                child: CommonImageView(
                  svgPath: ImageConstant.imgSearchDeepOrangeA401,
                ),
              ),
              prefixConstraints: BoxConstraints(
                minWidth: getSize(
                  20.00,
                ),
                minHeight: getSize(
                  20.00,
                ),
              ),
              suffix: Padding(
                padding: EdgeInsets.only(
                  right: getHorizontalSize(
                    15.00,
                  ),
                ),
                child: IconButton(
                  onPressed: () {
                    controller.stateActiveSearchController.clear;
                  },
                  icon: Icon(
                    Icons.clear,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
              suffixConstraints: BoxConstraints(
                minWidth: getHorizontalSize(
                  20.00,
                ),
                minHeight: getVerticalSize(
                  20.00,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 24,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "lbl_recent".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold20,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 3,
                      ),
                      child: Text(
                        "lbl_clear_all".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanBold16DeeporangeA401
                            .copyWith(
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 15,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                        bottom: 3,
                      ),
                      child: Text(
                        "lbl_theresa_webb".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtUrbanistRomanMedium18Gray600.copyWith(
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                    CommonImageView(
                      svgPath: ImageConstant.imgClose,
                      height: getSize(
                        28.00,
                      ),
                      width: getSize(
                        28.00,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 24,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                        bottom: 3,
                      ),
                      child: Text(
                        "msg_cameron_william".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtUrbanistRomanMedium18Gray600.copyWith(
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                    CommonImageView(
                      svgPath: ImageConstant.imgClose,
                      height: getSize(
                        28.00,
                      ),
                      width: getSize(
                        28.00,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 24,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 5,
                        bottom: 1,
                      ),
                      child: Text(
                        "lbl_floyd_miles".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtUrbanistRomanMedium18Gray600.copyWith(
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                    CommonImageView(
                      svgPath: ImageConstant.imgClose,
                      height: getSize(
                        28.00,
                      ),
                      width: getSize(
                        28.00,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 24,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 5,
                        bottom: 1,
                      ),
                      child: Text(
                        "lbl_savannah_nguyen".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtUrbanistRomanMedium18Gray600.copyWith(
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                    CommonImageView(
                      svgPath: ImageConstant.imgClose,
                      height: getSize(
                        28.00,
                      ),
                      width: getSize(
                        28.00,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 24,
                top: 34,
                right: 24,
              ),
              child: Text(
                "msg_suggested_searc".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRomanBold20,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 14,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 1,
                      ),
                      child: Text(
                        "lbl_ariana_grande".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtUrbanistRomanMedium18Gray600.copyWith(
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                    CommonImageView(
                      svgPath: ImageConstant.imgSearchGray500,
                      height: getSize(
                        24.00,
                      ),
                      width: getSize(
                        24.00,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 25,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 3,
                      ),
                      child: Text(
                        "lbl_ariana_cooper".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtUrbanistRomanMedium18Gray600.copyWith(
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        bottom: 1,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgSearchGray500,
                        height: getSize(
                          24.00,
                        ),
                        width: getSize(
                          24.00,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 23,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 1,
                      ),
                      child: Text(
                        "lbl_ariana_russel".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtUrbanistRomanMedium18Gray600.copyWith(
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                    CommonImageView(
                      svgPath: ImageConstant.imgSearchGray500,
                      height: getSize(
                        24.00,
                      ),
                      width: getSize(
                        24.00,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 25,
                  right: 24,
                  bottom: 310,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 1,
                      ),
                      child: Text(
                        "lbl_ariana_wilson".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtUrbanistRomanMedium18Gray600.copyWith(
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                    CommonImageView(
                      svgPath: ImageConstant.imgSearchGray500,
                      height: getSize(
                        24.00,
                      ),
                      width: getSize(
                        24.00,
                      ),
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
