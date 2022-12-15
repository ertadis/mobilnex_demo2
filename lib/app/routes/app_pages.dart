//app_pages.dart

import 'package:get/get.dart';
import 'package:mobilnex_demo3/app/modules/0_home_page/home_binding.dart';
import 'package:mobilnex_demo3/app/modules/0_home_page/home_page.dart';
import 'package:mobilnex_demo3/app/modules/10_kasa_tahsilat_page/_binding.dart';
import 'package:mobilnex_demo3/app/modules/10_kasa_tahsilat_page/_page.dart';
import 'package:mobilnex_demo3/app/modules/11_fiyat_gor_page/_binding.dart';
import 'package:mobilnex_demo3/app/modules/11_fiyat_gor_page/_page.dart';
import 'package:mobilnex_demo3/app/modules/12_ayarlar_page/_binding.dart';
import 'package:mobilnex_demo3/app/modules/12_ayarlar_page/_page.dart';
import 'package:mobilnex_demo3/app/modules/1_satis_siparisi_page/_binding.dart';
import 'package:mobilnex_demo3/app/modules/1_satis_siparisi_page/_page.dart';
import 'package:mobilnex_demo3/app/modules/2_satis_irsaliyesi_page/_binding.dart';
import 'package:mobilnex_demo3/app/modules/2_satis_irsaliyesi_page/_page.dart';
import 'package:mobilnex_demo3/app/modules/3_satis_fisleri_page/_binding.dart';
import 'package:mobilnex_demo3/app/modules/3_satis_fisleri_page/_page.dart';
import 'package:mobilnex_demo3/app/modules/4_satis_faturasi_page/_binding.dart';
import 'package:mobilnex_demo3/app/modules/4_satis_faturasi_page/_page.dart';
import 'package:mobilnex_demo3/app/modules/5_stok_kartlari_page/_binding.dart';
import 'package:mobilnex_demo3/app/modules/5_stok_kartlari_page/_page.dart';
import 'package:mobilnex_demo3/app/modules/6_cari_hesap_kartlari_page/_binding.dart';
import 'package:mobilnex_demo3/app/modules/6_cari_hesap_kartlari_page/_page.dart';
import 'package:mobilnex_demo3/app/modules/7_rota_page/_binding.dart';
import 'package:mobilnex_demo3/app/modules/7_rota_page/_page.dart';
import 'package:mobilnex_demo3/app/modules/8_tahsilat_makbuzlari_page/_binding.dart';
import 'package:mobilnex_demo3/app/modules/8_tahsilat_makbuzlari_page/_page.dart';
import 'package:mobilnex_demo3/app/modules/9_stok_sayim_page/_binding.dart';
import 'package:mobilnex_demo3/app/modules/9_stok_sayim_page/_page.dart';
import 'package:mobilnex_demo3/app/routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.satisSiparisi,
      page: () => SatisSiparisiPage(),
      binding: SatisSiparisiBinding(),
    ),
    GetPage(
      name: AppRoutes.satisIrsaliyesi,
      page: () => SatisIrsaliyesiPage(),
      binding: SatisIrsaliyesiBinding(),
    ),
    GetPage(
      name: AppRoutes.satisFisleri,
      page: () => SatisFisleriPage(),
      binding: SatisFisleriBinding(),
    ),
    GetPage(
      name: AppRoutes.satisFaturasi,
      page: () => SatisFaturasiPage(),
      binding: SatisFaturasiBinding(),
    ),
    GetPage(
      name: AppRoutes.stokKartlari,
      page: () => StokKartlariPage(),
      binding: StokKartlariBinding(),
    ),
    GetPage(
      name: AppRoutes.cariHesapKartlari,
      page: () => CariHesapKartlariPage(),
      binding: CariHesapKartlariBinding(),
    ),
    GetPage(
      name: AppRoutes.rota,
      page: () => RotaPage(),
      binding: RotaBinding(),
    ),
    GetPage(
      name: AppRoutes.tahsilatMakbuzlari,
      page: () => TahsilatMakbuzlariPage(),
      binding: TahsilatMakbuzlariBinding(),
    ),
    GetPage(
      name: AppRoutes.stokSayim,
      page: () => StokSayimPage(),
      binding: StokSayimBinding(),
    ),
    GetPage(
      name: AppRoutes.kasaTahsilat,
      page: () => KasaTahsilatPage(),
      binding: KasaTahsilatBinding(),
    ),
    GetPage(
      name: AppRoutes.fiyatGor,
      page: () => FiyatGorPage(),
      binding: FiyatGorBinding(),
    ),
    GetPage(
      name: AppRoutes.ayarlar,
      page: () => AyarlarPage(),
      binding: AyarlarBinding(),
    ),
  ];
}
