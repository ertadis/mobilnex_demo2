import 'package:flutter/material.dart';
import 'package:get/get.dart';


const blackBackgroundColor = Color(0xff1C1C1E);
const greyBackgroundColor = Color(0xff323234);
const orangeBackgroundColor = Color(0xffFB5C02);
const lightOrangeBackgroundColor = Color(0xff492919);
const whiteBackgroundColor = Colors.white;

const SatisSiparisiIcon = Icons.shopping_cart;
const SatisIrsaliyesiIcon = Icons.description;
const SatisFisleriIcon = Icons.receipt;
const SatisFaturasiIcon = Icons.request_quote;
const StokKartlariIcon = Icons.inventory;
const CariHesapKartlariIcon = Icons.recent_actors;
const RotaIcon = Icons.map;
const TahsilatMakbuzlariIcon = Icons.fact_check;
const StokSayimIcon = Icons.calculate;
const KasaTahsilatIcon = Icons.percent;
const FiyatGorIcon = Icons.sell;
const AyarlarIcon = Icons.settings;

const SatisSiparisiName = "Satış Siparişi";
const SatisIrsaliyesiName = "Satış İrsaliyesi";
const SatisFisleriName = "Satış Fişleri";

const SatisFaturasiName = "Satış Faturası";
const StokKartlariName = "Stok Kartları";
const CariHesapKartlariName = "Cari Hesap Kartları";

const RotaName = "Rota";
const TahsilatMakbuzlariName = "Tahsilat Makbuzları";
const StokSayimName = "Stok Sayım";

const KasaTahsilatName = "Kasa Tahsilat";
const FiyatGorName = "Fiyat Gör";
const AyarlarName = "Ayarlar";

final _DummySirketList = [
  "Quigley, Grant and Rogahn",
  "O'Hara, Rutherford and Hayes",
  "Labadie-Schroeder",
  "Hettinger, Parisian and Daniel",
  "Stokes-Hamill",
  "Bosco, Kling and Streich",
  "Bernier, Altenwerth and Stark",
  "Swaniawski-Senger",
  "McGlynn, Mohr and Hickle",
  "Streich, Herzog and Corkery",
  "Boyle-Towne",
  "Kuhn, Schiller and Cummings",
  "Hand, Lind and Baumbach",
  "Franecki-Schmeler",
  "Howe Group",
  "Becker LLC",
  "Kuhn LLC",
  "Zieme Group",
  "Steuber, Goodwin and Kuhn",
  "Zboncak, Mertz and Harber",
  "McKenzie, Gulgowski and Gerlach",
  "Schaefer, Fritsch and Leffler",
  "Stokes Group",
  "Emard Inc",
  "Hickle, Daniel and Smith",
  "McKenzie-Davis",
  "Hilll, Grant and Keebler",
  "Beatty, Weissnat and Maggio",
  "Thiel-Barrows",
  "Cassin, Stoltenberg and Murazik",
  "Nienow and Sons",
  "Fadel and Sons",
  "Witting, Wisozk and McGlynn",
  "Pouros, Lebsack and Klein",
  "Nader-Kihn",
  "Mills-Upton",
  "Weissnat-Smith",
  "Lueilwitz, Moen and Kulas",
  "Reichel-Lesch",
  "Murphy-Konopelski",
  "Frami-Wilkinson",
  "Pollich, Veum and Strosin",
  "DuBuque, Larson and Brekke",
  "Ryan, White and Johnson",
  "Nicolas-Labadie",
  "Rempel-Koch",
  "O'Keefe-Smitham",
  "Anderson, Weimann and Rempel",
  "Jacobs Group",
  "MacGyver-West",
  "Mosciski Group",
  "Aufderhar-Powlowski",
  "Predovic-Ziemann",
  "Moen-Herzog",
  "Kuhlman Inc",
  "Gleichner, Watsica and Morar",
  "Lindgren, Zulauf and Pouros",
  "Goyette, Ullrich and Renner",
  "Ryan, Hermiston and Paucek",
  "Kub-Orn",
  "Spencer-Anderson",
  "Ankunding, Russel and Schmeler",
  "Gusikowski Group",
  "Lind Inc",
  "Emmerich-Wilderman",
  "Haag, Rolfson and Hauck",
  "Walter, Toy and Schowalter",
  "Farrell Inc",
  "Wolff and Sons",
  "Reynolds LLC",
  "Mitchell-Kuhn",
  "Lang, Schaefer and Brown",
  "Ritchie, Sporer and Jacobs",
  "Kub, Wehner and Zemlak",
  "Vandervort-Macejkovic",
  "Pacocha and Sons",
  "Marvin Inc",
  "Heaney, O'Conner and Kuhn",
  "Hane Inc",
  "Bednar, Harber and Hagenes",
  "Mueller, Gleichner and Prosacco",
  "Gorczany-Runolfsdottir",
  "Schmitt, Hudson and Dibbert",
  "Raynor, Friesen and Collins",
  "Fisher Group",
  "Kemmer-Larkin",
  "Mosciski-Rau",
  "Abshire-Dare",
  "Hauck-Schinner",
  "Rice-Mueller",
  "Witting, King and Walter",
  "Cremin, Kris and Wunsch",
  "Cummings, Wisozk and Maggio",
  "Deckow-Bode",
  "Ziemann, Stiedemann and Stamm",
  "Sipes-Bahringer",
  "Murray, Kessler and Wisozk",
  "Nitzsche-Dach",
  "Parisian-Morar",
  "Cartwright, Parker and Emard",
  "Waelchi and Sons",
  "Muller and Sons",
  "Lockman-Jaskolski",
  "Lynch, Rau and Marquardt",
  "Cronin, Heathcote and Daniel",
  "Baumbach and Sons",
  "Rempel - Stiedemann",
  "Schamberger - Wintheiser",
  "Larson - Wehner",
  "Morar Group",
  "McDermott - Batz",
  "Ernser, Predovic and Kuvalis",
  "Prosacco LLC",
  "Boyer, Cremin and Oberbrunner",
  "Turcotte, Dicki and Schowalter",
  "Waters Inc",
  "Haley Group",
  "Goldner, Sauer and Dibbert",
  "Aufderhar, Hegmann and Towne",
];
final DummySirketList = _DummySirketList.obs;
