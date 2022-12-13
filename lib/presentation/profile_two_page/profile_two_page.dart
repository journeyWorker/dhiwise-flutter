import '../profile_two_page/widgets/profile_two_item_widget.dart';
import 'controller/profile_two_controller.dart';
import 'models/profile_two_item_model.dart';
import 'models/profile_two_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/widgets/app_bar/appbar_image.dart';
import 'package:ticktter/widgets/app_bar/custom_app_bar.dart';
import 'package:ticktter/widgets/custom_button.dart';
import 'package:ticktter/widgets/custom_drop_down.dart';

// ignore_for_file: must_be_immutable
class ProfileTwoPage extends StatelessWidget {
  ProfileTwoController controller =
      Get.put(ProfileTwoController(ProfileTwoModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 52,
          leading: AppbarImage(
            height: getSize(
              28.00,
            ),
            width: getSize(
              28.00,
            ),
            svgPath: ImageConstant.imgClock1,
            margin: getMargin(
              left: 24,
              top: 10,
              bottom: 13,
            ),
          ),
          centerTitle: true,
          title: CustomDropDown(
            width: 131,
            focusNode: FocusNode(),
            icon: Container(
              margin: getMargin(
                left: 8,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgArrowdownGray900,
              ),
            ),
            hintText: "lbl_andrew".tr,
            fontStyle: DropDownFontStyle.UrbanistRomanBold24,
            items: controller.profileTwoModelObj.value.dropdownItemList,
            onChanged: (value) {
              controller.onSelected(value);
            },
          ),
          actions: [
            AppbarImage(
              height: getSize(
                28.00,
              ),
              width: getSize(
                28.00,
              ),
              svgPath: ImageConstant.imgSettings28x28,
              margin: getMargin(
                left: 24,
                top: 10,
                right: 24,
                bottom: 13,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: getPadding(
              left: 24,
              top: 18.0,
              right: 24,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: getSize(
                      120.00,
                    ),
                    width: getSize(
                      120.00,
                    ),
                    margin: getMargin(
                      left: 20,
                      right: 20,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                60.00,
                              ),
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.imgEllipse120x120,
                              height: getSize(
                                120.00,
                              ),
                              width: getSize(
                                120.00,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: getPadding(
                              left: 10,
                              top: 10,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgEdit,
                              height: getSize(
                                30.00,
                              ),
                              width: getSize(
                                30.00,
                              ),
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
                      left: 20,
                      top: 14,
                      right: 20,
                    ),
                    child: Text(
                      "lbl_andrew_aisnley2".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold20,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 20,
                      top: 9,
                      right: 20,
                    ),
                    child: Text(
                      "msg_designer_vide".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanMedium14Gray900.copyWith(
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 20,
                      top: 19,
                      right: 14,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_247".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold24,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 4,
                                    top: 5,
                                    right: 4,
                                  ),
                                  child: Text(
                                    "lbl_posts".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtUrbanistRomanMedium14Gray800
                                        .copyWith(
                                      letterSpacing: 0.20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            53.00,
                          ),
                          width: getHorizontalSize(
                            1.00,
                          ),
                          margin: getMargin(
                            top: 1,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray200,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 1,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 2,
                                    right: 2,
                                  ),
                                  child: Text(
                                    "lbl_368k".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold24,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                ),
                                child: Text(
                                  "lbl_followers".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtUrbanistRomanMedium14Gray800
                                      .copyWith(
                                    letterSpacing: 0.20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            53.00,
                          ),
                          width: getHorizontalSize(
                            1.00,
                          ),
                          margin: getMargin(
                            top: 1,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray200,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 10,
                                  right: 10,
                                ),
                                child: Text(
                                  "lbl_374".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold24,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: getPadding(
                                    top: 6,
                                  ),
                                  child: Text(
                                    "lbl_following".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtUrbanistRomanMedium14Gray800
                                        .copyWith(
                                      letterSpacing: 0.20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            53.00,
                          ),
                          width: getHorizontalSize(
                            1.00,
                          ),
                          margin: getMargin(
                            top: 1,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray200,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 1,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "lbl_3_7m".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold24,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 11,
                                  top: 5,
                                  right: 10,
                                ),
                                child: Text(
                                  "lbl_likes".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtUrbanistRomanMedium14Gray800
                                      .copyWith(
                                    letterSpacing: 0.20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomButton(
                  width: 380,
                  text: "lbl_edit_profile".tr,
                  margin: getMargin(
                    top: 24,
                  ),
                  variant: ButtonVariant.OutlineDeeporangeA401,
                  shape: ButtonShape.RoundedBorder16,
                  padding: ButtonPadding.PaddingAll11,
                  fontStyle: ButtonFontStyle.UrbanistRomanBold18DeeporangeA401,
                  alignment: Alignment.centerLeft,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      top: 24,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 36,
                                    right: 35,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgGrid24x24,
                                    height: getSize(
                                      24.00,
                                    ),
                                    width: getSize(
                                      24.00,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: getVerticalSize(
                                      4.00,
                                    ),
                                    width: getHorizontalSize(
                                      95.00,
                                    ),
                                    margin: getMargin(
                                      top: 12,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.deepOrangeA401,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          2.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: getPadding(
                                left: 36,
                                bottom: 16,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgLock,
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
                        Padding(
                          padding: getPadding(
                            left: 71,
                            bottom: 16,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CommonImageView(
                                svgPath: ImageConstant.imgBookmark24x24,
                                height: getSize(
                                  24.00,
                                ),
                                width: getSize(
                                  24.00,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 71,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgIconlyboldheart,
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
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      top: 23,
                    ),
                    child: Obx(
                      () => GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: getVerticalSize(
                            201.00,
                          ),
                          crossAxisCount: 3,
                          mainAxisSpacing: getHorizontalSize(
                            8.67,
                          ),
                          crossAxisSpacing: getHorizontalSize(
                            8.67,
                          ),
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller
                            .profileTwoModelObj.value.profileTwoItemList.length,
                        itemBuilder: (context, index) {
                          ProfileTwoItemModel model = controller
                              .profileTwoModelObj
                              .value
                              .profileTwoItemList[index];
                          return ProfileTwoItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
