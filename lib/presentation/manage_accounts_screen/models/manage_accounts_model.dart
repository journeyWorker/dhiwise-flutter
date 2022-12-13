import 'package:get/get.dart';import 'listcall_item_model.dart';class ManageAccountsModel {RxList<ListcallItemModel> listcallItemList = RxList.filled(2,ListcallItemModel());

DateTime selectedDateofBirthTxt = DateTime.now();

Rx<String> dateofBirthTxt = Rx('Lorem ipsum dolor sit amet');

 }
