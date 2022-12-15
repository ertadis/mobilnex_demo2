import 'package:get/get.dart';
import 'package:mobilnex_demo3/app/modules/4_satis_faturasi_page/_controller.dart';

class SatisFaturasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SatisFaturasiController());
  }
}
