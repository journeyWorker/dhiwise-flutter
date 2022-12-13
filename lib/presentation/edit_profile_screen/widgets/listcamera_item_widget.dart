import '../controller/edit_profile_controller.dart';
import '../models/listcamera_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/widgets/custom_drop_down.dart';

// ignore: must_be_immutable
class ListcameraItemWidget extends StatelessWidget {
  ListcameraItemWidget(this.listcameraItemModelObj);

  ListcameraItemModel listcameraItemModelObj;

  var controller = Get.find<EditProfileController>();

  SelectionPopupModel? selectedDropDownValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 12.0,
        bottom: 12.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              CommonImageView(
                svgPath: ImageConstant.imgCamera28x28,
                height: getSize(
                  28.00,
                ),
                width: getSize(
                  28.00,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 20,
                  top: 5,
                  bottom: 1,
                ),
                child: Text(
                  "lbl_instagram".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(
                    letterSpacing: 0.20,
                  ),
                ),
              ),
            ],
          ),
          CustomDropDown(
            width: 176,
            focusNode: FocusNode(),
            icon: Container(
              margin: getMargin(
                left: 20,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgArrowdownGray90020x20,
              ),
            ),
            hintText: "lbl_andrew_ains2".tr,
            margin: getMargin(
              left: 71,
              top: 3,
              bottom: 2,
            ),
            items: listcameraItemModelObj.dropdownItemList,
            onChanged: (value) {
              selectedDropDownValue = value;
            },
          ),
        ],
      ),
    );
  }
}
