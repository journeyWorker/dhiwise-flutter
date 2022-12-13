import 'controller/search_results_users_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/presentation/search_results_sounds_page/search_results_sounds_page.dart';
import 'package:ticktter/presentation/search_results_top_page/search_results_top_page.dart';
import 'package:ticktter/presentation/search_results_users_page/search_results_users_page.dart';
import 'package:ticktter/presentation/search_results_videos_page/search_results_videos_page.dart';
import 'package:ticktter/widgets/custom_search_view.dart';

class SearchResultsUsersTabContainerScreen
    extends GetWidget<SearchResultsUsersTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomSearchView(
                        width: 380,
                        focusNode: FocusNode(),
                        controller: controller.stateFilledSearchController,
                        hintText: "lbl_ariana2".tr,
                        margin: getMargin(
                          left: 24,
                          top: 24,
                          right: 24,
                        ),
                        fontStyle: SearchViewFontStyle.UrbanistSemiBold14,
                        prefix: Container(
                          margin: getMargin(
                            left: 20,
                            top: 18,
                            right: 12,
                            bottom: 18,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgSearchGray400,
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
                              controller.stateFilledSearchController.clear;
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
                      Container(
                        width: getHorizontalSize(
                          331.00,
                        ),
                        margin: getMargin(
                          left: 24,
                          top: 26,
                          right: 24,
                        ),
                        child: TabBar(
                          controller: controller.group11Controller,
                          tabs: [
                            Tab(
                              text: "lbl_top".tr,
                            ),
                            Tab(
                              text: "lbl_users".tr,
                            ),
                            Tab(
                              text: "lbl_videos".tr,
                            ),
                            Tab(
                              text: "lbl_sounds".tr,
                            ),
                          ],
                          labelColor: ColorConstant.deepOrangeA401,
                          unselectedLabelColor: ColorConstant.gray500,
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 24,
                          top: 24,
                          right: 24,
                        ),
                        height: getVerticalSize(
                          732.00,
                        ),
                        child: TabBarView(
                          controller: controller.group11Controller,
                          children: [
                            SearchResultsTopPage(),
                            SearchResultsUsersPage(),
                            SearchResultsVideosPage(),
                            SearchResultsSoundsPage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
