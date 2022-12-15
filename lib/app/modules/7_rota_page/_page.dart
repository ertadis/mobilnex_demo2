import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobilnex_demo3/app/constants/constants.dart';
import 'package:mobilnex_demo3/app/modules/7_rota_page/_controller.dart';

class RotaPage extends StatelessWidget {
  const RotaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RotaController>(
      builder: (controller) => Scaffold(
        backgroundColor: blackBackgroundColor,
        appBar: AppBar(
          backgroundColor: blackBackgroundColor,
          title: const Text(
            "Rota",
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
