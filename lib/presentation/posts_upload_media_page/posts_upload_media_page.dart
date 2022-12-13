import '../posts_upload_media_page/widgets/gridcheckmark_item_widget.dart';
import 'controller/posts_upload_media_controller.dart';
import 'models/gridcheckmark_item_model.dart';
import 'models/posts_upload_media_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PostsUploadMediaPage extends StatelessWidget {
  PostsUploadMediaController controller =
      Get.put(PostsUploadMediaController(PostsUploadMediaModel().obs));

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
                122.00,
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
                .postsUploadMediaModelObj.value.gridcheckmarkItemList.length,
            itemBuilder: (context, index) {
              GridcheckmarkItemModel model = controller
                  .postsUploadMediaModelObj.value.gridcheckmarkItemList[index];
              return GridcheckmarkItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
