import '../search_results_videos_page/widgets/gridplay_item_widget.dart';
import 'controller/search_results_videos_controller.dart';
import 'models/gridplay_item_model.dart';
import 'models/search_results_videos_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchResultsVideosPage extends StatelessWidget {
  SearchResultsVideosController controller =
      Get.put(SearchResultsVideosController(SearchResultsVideosModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: getVerticalSize(
                329.00,
              ),
              crossAxisCount: 2,
              mainAxisSpacing: getHorizontalSize(
                8.00,
              ),
              crossAxisSpacing: getHorizontalSize(
                8.00,
              ),
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller
                .searchResultsVideosModelObj.value.gridplayItemList.length,
            itemBuilder: (context, index) {
              GridplayItemModel model = controller
                  .searchResultsVideosModelObj.value.gridplayItemList[index];
              return GridplayItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
