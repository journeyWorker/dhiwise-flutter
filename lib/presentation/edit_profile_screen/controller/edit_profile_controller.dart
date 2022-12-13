import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/edit_profile_screen/models/edit_profile_model.dart';class EditProfileController extends GetxController {Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
