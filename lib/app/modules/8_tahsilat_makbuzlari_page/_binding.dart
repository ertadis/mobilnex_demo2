import 'package:get/get.dart';
import 'package:mobilnex_demo3/app/modules/8_tahsilat_makbuzlari_page/_controller.dart';

class TahsilatMakbuzlariBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TahsilatMakbuzlariController());
  }
}
