import 'package:get/get.dart';
import 'package:mobilnex_demo3/app/modules/10_kasa_tahsilat_page/_controller.dart';

class KasaTahsilatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KasaTahsilatController());
  }
}
