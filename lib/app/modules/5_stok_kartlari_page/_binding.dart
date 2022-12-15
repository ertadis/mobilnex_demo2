import 'package:get/get.dart';
import 'package:mobilnex_demo3/app/modules/5_stok_kartlari_page/_controller.dart';

class StokKartlariBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StokKartlariController());
  }
}
