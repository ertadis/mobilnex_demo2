import 'package:get/get.dart';
import 'package:mobilnex_demo3/app/modules/11_fiyat_gor_page/_controller.dart';

class FiyatGorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FiyatGorController());
  }
}
