import 'package:ticktter/core/app_export.dart';import 'package:ticktter/presentation/posts_add_effects_screen/models/posts_add_effects_model.dart';class PostsAddEffectsController extends GetxController {Rx<PostsAddEffectsModel> postsAddEffectsModelObj = PostsAddEffectsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
