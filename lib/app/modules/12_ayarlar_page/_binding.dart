import 'package:get/get.dart';
import 'package:mobilnex_demo3/app/modules/12_ayarlar_page/_controller.dart';

class AyarlarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AyarlarController());
  }
}
