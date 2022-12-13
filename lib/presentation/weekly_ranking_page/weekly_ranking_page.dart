import '../weekly_ranking_page/widgets/weekly_ranking_item_widget.dart';
import 'controller/weekly_ranking_controller.dart';
import 'models/weekly_ranking_item_model.dart';
import 'models/weekly_ranking_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';

// ignore_for_file: must_be_immutable
class WeeklyRankingPage extends StatelessWidget {
  WeeklyRankingController controller =
      Get.put(WeeklyRankingController(WeeklyRankingModel().obs));

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
                .weeklyRankingModelObj.value.weeklyRankingItemList.length,
            itemBuilder: (context, index) {
              WeeklyRankingItemModel model = controller
                  .weeklyRankingModelObj.value.weeklyRankingItemList[index];
              return WeeklyRankingItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
