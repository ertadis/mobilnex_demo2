// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Companies {
  Companies({
    required this.id,
    required this.name,
    required this.address,
    this.address2 = "",
    required this.city,
    required this.country,
    required this.taxAdministration,
    required this.taxNo,
    required this.tcIdNo,
    required this.phone1,
    this.phone2 = "",
    this.fax = "",
    required this.gsm,
    required this.email,
  });

  int id;
  String name;
  String address;
  String address2;
  String city;
  String country;
  String taxAdministration;
  String taxNo;
  String tcIdNo;
  String phone1;
  String phone2;
  String fax;
  String gsm;
  String email;

  factory Companies.fromJson(String str) => Companies.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Companies.fromMap(Map<String, dynamic> json) => Companies(
        id: json["id"],
        name: json["name"],
        address: json["address"],
        address2: json["address2"],
        city: json["city"],
        country: json["country"],
        taxAdministration: json["tax_administration"],
        taxNo: json["tax_no"],
        tcIdNo: json["tc_id_no"],
        phone1: json["phone_1"],
        phone2: json["phone_2"],
        fax: json["fax"],
        gsm: json["gsm"],
        email: json["email"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "address": address,
        "address2": address2,
        "city": city,
        "country": country,
        "tax_administration": taxAdministration,
        "tax_no": taxNo,
        "tc_id_no": tcIdNo,
        "phone_1": phone1,
        "phone_2": phone2,
        "fax": fax,
        "gsm": gsm,
        "email": email,
      };
}
