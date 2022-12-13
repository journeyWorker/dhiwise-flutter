import '../controller/edit_profile_controller.dart';
import '../models/listuser1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/widgets/custom_drop_down.dart';

// ignore: must_be_immutable
class Listuser1ItemWidget extends StatelessWidget {
  Listuser1ItemWidget(this.listuser1ItemModelObj);

  Listuser1ItemModel listuser1ItemModelObj;

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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CommonImageView(
                svgPath: ImageConstant.imgUser28x28,
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
                  top: 3,
                  bottom: 2,
                ),
                child: Text(
                  "lbl_name".tr,
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
            width: 171,
            focusNode: FocusNode(),
            icon: Container(
              margin: getMargin(
                left: 20,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgArrowdownGray90020x20,
              ),
            ),
            hintText: "lbl_andrew_ainsley2".tr,
            margin: getMargin(
              left: 111,
              top: 4,
              bottom: 1,
            ),
            items: listuser1ItemModelObj.dropdownItemList,
            onChanged: (value) {
              selectedDropDownValue = value;
            },
          ),
        ],
      ),
    );
  }
}
