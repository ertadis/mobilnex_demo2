import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobilnex_demo3/app/constants/constants.dart';
import 'package:mobilnex_demo3/app/modules/6_cari_hesap_kartlari_page/_controller.dart';

class CariHesapKartlariPage extends StatelessWidget {
  const CariHesapKartlariPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CariHesapKartlariController>(
      builder: (controller) => Scaffold(
        backgroundColor: blackBackgroundColor,
        appBar: AppBar(
          backgroundColor: blackBackgroundColor,
          title: const Text(
            "Cari Hesap Kayıtları",
            style: TextStyle(color: whiteBackgroundColor),
          ),
          elevation: 0,
          centerTitle: true,
          leading: Builder(
            builder: (context) {
              return IconButton(
                onPressed: Get.back,
                icon: Icon(Icons.arrow_back),
                tooltip: "Back",
              );
            },
          ),
        ),
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
