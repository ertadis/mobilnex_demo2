//home_binding.dart

import 'package:get/get.dart';

import 'package:mobilnex_demo3/app/modules/0_home_page/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
