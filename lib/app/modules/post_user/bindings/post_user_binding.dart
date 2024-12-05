import 'package:get/get.dart';

import '../controllers/post_user_controller.dart';

class PostUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostUserController>(
      () => PostUserController(),
    );
  }
}
