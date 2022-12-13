import '../controller/posts_upload_media_controller.dart';
import '../models/gridcheckmark_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';

// ignore: must_be_immutable
class GridcheckmarkItemWidget extends StatelessWidget {
  GridcheckmarkItemWidget(this.gridcheckmarkItemModelObj);

  GridcheckmarkItemModel gridcheckmarkItemModelObj;

  var controller = Get.find<PostsUploadMediaController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getSize(
        121.00,
      ),
      width: getSize(
        121.00,
      ),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  12.00,
                ),
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgImage121x121,
                height: getSize(
                  121.00,
                ),
                width: getSize(
                  121.00,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: getPadding(
                all: 10,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    10.00,
                  ),
                ),
                child: CommonImageView(
                  svgPath: ImageConstant.imgCheckmark20x20,
                  height: getSize(
                    20.00,
                  ),
                  width: getSize(
                    20.00,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
