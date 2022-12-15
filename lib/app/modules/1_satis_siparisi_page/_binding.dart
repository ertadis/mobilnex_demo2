import 'package:get/get.dart';
import 'package:mobilnex_demo3/app/modules/1_satis_siparisi_page/_controller.dart';

class SatisSiparisiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SatisSiparisiController());
  }
}
