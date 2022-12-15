import 'package:get/get.dart';
import 'package:mobilnex_demo3/app/modules/6_cari_hesap_kartlari_page/_controller.dart';

class CariHesapKartlariBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CariHesapKartlariController());
  }
}
