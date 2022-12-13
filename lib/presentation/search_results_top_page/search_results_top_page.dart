import '../search_results_top_page/widgets/listellipse_item_widget.dart';
import '../search_results_top_page/widgets/listplay_item_widget.dart';
import '../search_results_top_page/widgets/listsidetoside_item_widget.dart';
import 'controller/search_results_top_controller.dart';
import 'models/listellipse_item_model.dart';
import 'models/listplay_item_model.dart';
import 'models/listsidetoside_item_model.dart';
import 'models/search_results_top_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchResultsTopPage extends StatelessWidget {
  SearchResultsTopController controller =
      Get.put(SearchResultsTopController(SearchResultsTopModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  right: 10,
                ),
                child: Text(
                  "lbl_users".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold20,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 23,
                ),
                child: Obx(
                  () => ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.searchResultsTopModelObj.value
                        .listellipseItemList.length,
                    itemBuilder: (context, index) {
                      ListellipseItemModel model = controller
                          .searchResultsTopModelObj
                          .value
                          .listellipseItemList[index];
                      return ListellipseItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 23,
                  right: 10,
                ),
                child: Text(
                  "lbl_videos".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold20,
                ),
              ),
              Container(
                height: getVerticalSize(
                  224.00,
                ),
                width: getHorizontalSize(
                  380.00,
                ),
                child: Obx(
                  () => ListView.builder(
                    padding: getPadding(
                      top: 24,
                    ),
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: controller
                        .searchResultsTopModelObj.value.listplayItemList.length,
                    itemBuilder: (context, index) {
                      ListplayItemModel model = controller
                          .searchResultsTopModelObj
                          .value
                          .listplayItemList[index];
                      return ListplayItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 23,
                  right: 10,
                ),
                child: Text(
                  "lbl_sounds".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold20,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 24,
                ),
                child: Obx(
                  () => ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.searchResultsTopModelObj.value
                        .listsidetosideItemList.length,
                    itemBuilder: (context, index) {
                      ListsidetosideItemModel model = controller
                          .searchResultsTopModelObj
                          .value
                          .listsidetosideItemList[index];
                      return ListsidetosideItemWidget(
                        model,
                      );
                    },
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
