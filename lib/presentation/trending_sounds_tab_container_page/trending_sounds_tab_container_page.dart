import 'controller/trending_sounds_tab_container_controller.dart';
import 'models/trending_sounds_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/presentation/trending_hashtag_page/trending_hashtag_page.dart';
import 'package:ticktter/presentation/trending_sounds_page/trending_sounds_page.dart';
import 'package:ticktter/widgets/app_bar/appbar_image.dart';
import 'package:ticktter/widgets/app_bar/appbar_title.dart';
import 'package:ticktter/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class TrendingSoundsTabContainerPage extends StatelessWidget {
  TrendingSoundsTabContainerController controller = Get.put(
      TrendingSoundsTabContainerController(
          TrendingSoundsTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 56,
          leading: AppbarImage(
            height: getSize(
              32.00,
            ),
            width: getSize(
              32.00,
            ),
            imagePath: ImageConstant.imgFrame2,
            margin: getMargin(
              left: 24,
              top: 10,
              bottom: 12,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_trending".tr,
            margin: getMargin(
              left: 12,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                28.00,
              ),
              width: getSize(
                28.00,
              ),
              svgPath: ImageConstant.imgSearchGray900,
              margin: getMargin(
                left: 24,
                top: 12,
                right: 24,
                bottom: 14,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: getPadding(
            left: 24,
            top: 25.0,
            right: 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: getHorizontalSize(
                  304.00,
                ),
                margin: getMargin(
                  right: 10,
                ),
                child: TabBar(
                  controller: controller.autoLayoutHorizontalController,
                  tabs: [
                    Tab(
                      text: "lbl_sounds".tr,
                    ),
                    Tab(
                      text: "lbl_hashtag".tr,
                    ),
                  ],
                  labelColor: ColorConstant.deepOrangeA401,
                  unselectedLabelColor: ColorConstant.gray500,
                ),
              ),
              Container(
                margin: getMargin(
                  top: 24,
                ),
                height: getVerticalSize(
                  620.00,
                ),
                child: TabBarView(
                  controller: controller.autoLayoutHorizontalController,
                  children: [
                    TrendingSoundsPage(),
                    TrendingHashtagPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
