import 'package:get/get.dart';
import 'package:mobilnex_demo3/app/modules/2_satis_irsaliyesi_page/_controller.dart';

class SatisIrsaliyesiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SatisIrsaliyesiController());
  }
}
