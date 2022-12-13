import '../controller/manage_accounts_controller.dart';
import '../models/listcall_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/widgets/custom_drop_down.dart';

// ignore: must_be_immutable
class ListcallItemWidget extends StatelessWidget {
  ListcallItemWidget(this.listcallItemModelObj);

  ListcallItemModel listcallItemModelObj;

  var controller = Get.find<ManageAccountsController>();

  SelectionPopupModel? selectedDropDownValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 12.0,
        bottom: 12.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CommonImageView(
            svgPath: ImageConstant.imgCall,
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
              top: 2,
              bottom: 3,
            ),
            child: Text(
              "lbl_phone_number".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(
                letterSpacing: 0.20,
              ),
            ),
          ),
          CustomDropDown(
            width: 163,
            focusNode: FocusNode(),
            icon: Container(
              margin: getMargin(
                left: 20,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgArrowdownGray90020x20,
              ),
            ),
            hintText: "msg_1_111_467_378".tr,
            margin: getMargin(
              left: 47,
              top: 3,
              bottom: 2,
            ),
            items: listcallItemModelObj.dropdownItemList,
            onChanged: (value) {
              selectedDropDownValue = value;
            },
          ),
        ],
      ),
    );
  }
}
