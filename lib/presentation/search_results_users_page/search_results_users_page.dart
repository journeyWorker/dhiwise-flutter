import '../search_results_users_page/widgets/listellipse1_item_widget.dart';
import 'controller/search_results_users_controller.dart';
import 'models/listellipse1_item_model.dart';
import 'models/search_results_users_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchResultsUsersPage extends StatelessWidget {
  SearchResultsUsersController controller =
      Get.put(SearchResultsUsersController(SearchResultsUsersModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Obx(
          () => ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller
                .searchResultsUsersModelObj.value.listellipse1ItemList.length,
            itemBuilder: (context, index) {
              Listellipse1ItemModel model = controller
                  .searchResultsUsersModelObj.value.listellipse1ItemList[index];
              return Listellipse1ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
