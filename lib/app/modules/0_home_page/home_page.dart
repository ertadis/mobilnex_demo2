//home_page.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import 'package:mobilnex_demo3/app/constants/DrawerListView.dart';
import 'package:mobilnex_demo3/app/constants/constants.dart';
import 'package:mobilnex_demo3/app/modules/0_home_page/home_controller.dart';
import 'package:mobilnex_demo3/app/routes/app_routes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        backgroundColor: blackBackgroundColor,
        appBar: AppBar(
          backgroundColor: blackBackgroundColor,
          title: const Text('MOBILNEX',
              style: TextStyle(color: whiteBackgroundColor)),
          elevation: 0,
          centerTitle: true,
          leading: Builder(
            builder: (context) {
              return IconButton(
                onPressed: Scaffold.of(context).openDrawer,
                icon: Icon(Icons.menu),
                tooltip: "Menu",
              );
            },
          ),
        ),
        drawer: HomePageDrawer(),
        body: HomePageBody(),
      ),
    );
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: RowBoxes(
            iconName1: SatisSiparisiIcon,
            text1: SatisSiparisiName,
            navigate1: AppRoutes.satisSiparisi,
            iconName2: SatisIrsaliyesiIcon,
            text2: SatisIrsaliyesiName,
            navigate2: AppRoutes.satisIrsaliyesi,
            iconName3: SatisFisleriIcon,
            text3: SatisFisleriName,
            navigate3: AppRoutes.satisFisleri,
          ),
        ),
        Expanded(
          flex: 4,
          child: RowBoxes(
            iconName1: SatisFaturasiIcon,
            text1: SatisFaturasiName,
            navigate1: AppRoutes.satisFaturasi,
            iconName2: StokKartlariIcon,
            text2: StokKartlariName,
            navigate2: AppRoutes.stokKartlari,
            iconName3: CariHesapKartlariIcon,
            text3: CariHesapKartlariName,
            navigate3: AppRoutes.cariHesapKartlari,
          ),
        ),
        Expanded(
          flex: 4,
          child: RowBoxes(
            iconName1: RotaIcon,
            text1: RotaName,
            navigate1: (AppRoutes.rota),
            iconName2: TahsilatMakbuzlariIcon,
            text2: TahsilatMakbuzlariName,
            navigate2: (AppRoutes.tahsilatMakbuzlari),
            iconName3: StokSayimIcon,
            text3: StokSayimName,
            navigate3: (AppRoutes.stokSayim),
          ),
        ),
        Expanded(
          flex: 4,
          child: RowBoxes(
            iconName1: KasaTahsilatIcon,
            text1: KasaTahsilatName,
            navigate1: (AppRoutes.kasaTahsilat),
            iconName2: FiyatGorIcon,
            text2: FiyatGorName,
            navigate2: (AppRoutes.fiyatGor),
            iconName3: AyarlarIcon,
            text3: AyarlarName,
            navigate3: (AppRoutes.ayarlar),
          ),
        ),
        Expanded(
          flex: 3,
          child: Box(
            text: "Çıkış",
            iconName: Icons.exit_to_app,
            //navigate: SystemNavigator.pop(animated: true),
          ),
        )
      ],
    );
  }
}

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: blackBackgroundColor,
      child: DrawerListView(
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
              decoration: BoxDecoration(color: blackBackgroundColor),
              child: Text(
                "Mobilnex",
                style: TextStyle(color: whiteBackgroundColor, fontSize: 24),
              ),
            ),
          ), //Drawer Header
          DrawerListTile(
            iconName: Icons.home,
            text: "Ana Sayfa",
          ),
          SizedBox(
            height: 5,
          ),
          DrawerExpansionTile(
            iconName: Icons.abc,
            text: "Tanımlar",
            children: [
              DrawerListTile(
                iconName: Icons.home,
                text: "Stok Kartları",
              )
            ],
          )
        ],
      ),
    );
  }
}

class RowBoxes extends StatelessWidget {
  final iconName1;
  final iconName2;
  final iconName3;
  final text1;
  final text2;
  final text3;
  final navigate1;
  final navigate2;
  final navigate3;

  const RowBoxes(
      {Key? key,
      this.iconName1,
      this.iconName2,
      this.iconName3,
      this.text1,
      this.text2,
      this.text3,
      this.navigate1,
      this.navigate2,
      this.navigate3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Box(
            iconName: iconName1,
            text: text1,
            navigate: navigate1,
          ),
        ),
        Expanded(
          flex: 1,
          child: Box(
            iconName: iconName2,
            text: text2,
            navigate: navigate2,
          ),
        ),
        Expanded(
          flex: 1,
          child: Box(
            iconName: iconName3,
            text: text3,
            navigate: navigate3,
          ),
        ),
      ],
    );
  }
}

class Box extends StatelessWidget {
  final iconName;
  final text;
  final navigate;

  const Box({Key? key, this.iconName, this.text, this.navigate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Get.toNamed(navigate);
      },
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: greyBackgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 6,
              child: Icon(
                iconName,
                color: whiteBackgroundColor,
                size: 45,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(color: whiteBackgroundColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
