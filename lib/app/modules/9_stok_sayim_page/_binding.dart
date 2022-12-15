import 'package:get/get.dart';
import 'package:mobilnex_demo3/app/modules/9_stok_sayim_page/_controller.dart';

class StokSayimBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StokSayimController());
  }
}
