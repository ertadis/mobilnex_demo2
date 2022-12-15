import 'package:get/get.dart';
import 'package:mobilnex_demo3/app/modules/3_satis_fisleri_page/_controller.dart';

class SatisFisleriBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SatisFisleriController());
  }
}
