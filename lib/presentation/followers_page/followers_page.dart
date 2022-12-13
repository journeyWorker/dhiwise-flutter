import '../followers_page/widgets/followers_item_widget.dart';
import 'controller/followers_controller.dart';
import 'models/followers_item_model.dart';
import 'models/followers_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FollowersPage extends StatelessWidget {
  FollowersController controller =
      Get.put(FollowersController(FollowersModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Obx(
          () => ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount:
                controller.followersModelObj.value.followersItemList.length,
            itemBuilder: (context, index) {
              FollowersItemModel model =
                  controller.followersModelObj.value.followersItemList[index];
              return FollowersItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
