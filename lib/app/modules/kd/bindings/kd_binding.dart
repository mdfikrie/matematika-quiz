import 'package:get/get.dart';

import '../controllers/kd_controller.dart';

class KdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KdController>(
      () => KdController(),
    );
  }
}
