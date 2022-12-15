import 'package:get/get.dart';
import 'package:mobilnex_demo3/app/modules/7_rota_page/_controller.dart';

class RotaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RotaController());
  }
}
