import 'package:ticktter/core/app_export.dart';
import 'package:ticktter/presentation/home_page/models/home_model.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  TextEditingController stateInactiveController = TextEditingController();

  TextEditingController stateInactiveOneController = TextEditingController();

  Rx<HomeModel> homeModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    stateInactiveController.dispose();
    stateInactiveOneController.dispose();
  }
}
