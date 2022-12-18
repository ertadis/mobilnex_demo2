import 'dart:convert';
import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:mobilnex_demo3/app/models/Companies.dart';

const String localJsonPath = '/lib/app/data/MOCK_DATA.json';

class SatisSiparisiController extends GetxController {
  var id,
      name,
      address,
      address2,
      city,
      country,
      taxAdministration,
      taxNo,
      tcIdNo,
      phone1,
      phone2,
      fax,
      gsm,
      email;
  var companyList;
  var searchedCompanies;
  var decodedJson;
  var tmp_list;

  Future<dynamic> readJson(String filePath) async {
    try {
      final file = File(filePath);
      if (await file.exists()) {
        final contents = await file.readAsString();
        return jsonDecode(contents);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

// Writes the given JSON object to a file
  Future<void> writeJson(String filePath, dynamic json) async {
    final file = File(filePath);
    if (!await file.exists()) {
      await file.create();
    }
    await file.writeAsString(jsonEncode(json));
  }

  void saveData() async {
    // Encode the data as a JSON string
    String jsonData = jsonEncode({'id': id, 'name': name});
    // Use the getx library to write the JSON string to a file
    var file = File("MOCK_DATA.json");
    // Write the data to the file
    await file.writeAsString(jsonData);
  }

  @override
  Future<void> onInit() async {
    super.onInit();
    final json = await readJson(localJsonPath);
    //await writeJson('data.json', data);
  }

  @override
  void onReady() {
    super.onReady();

    //print("B " + companyList[0].name);
  }

  Future<List<dynamic>> loadLocalJson() async {
    var dummyData = await rootBundle.loadString(localJsonPath);
    //var decodedJson = (json.decode(dummyData)).map((e) => Companies.fromJson(e)).toList();
    //companyList = decodedJson;
    decodedJson = (json.decode(dummyData));

    //List<Companies> c = List<Companies>.from(decodedJson.map((model)=> Post.fromJson(model)));
    //Map<String, dynamic> res = await jsonDecode(decodedJson.toString());
    //companyList = Companies.fromJson(res) as List<Companies>;
    /*companyList = decodedJson
        .map((e) => Companies(
            id: e.id,
            name: e.name,
            address: e.address,
            city: e.city,
            country: e.country,
            taxAdministration: e.taxAdministration,
            taxNo: e.taxNo,
            tcIdNo: e.tcIdNo,
            phone1: e.phone1,
            gsm: e.gsm,
            email: e.email).toJson())
        .toList() as List<Companies>;*/
    print(decodedJson.runtimeType);
    return decodedJson;
  }

/*
  Future<String> companyKey(list, key) {
    return list[key];
  }

  void writeJson(value) async {
    File jsonFile = File(localJsonPath);
    jsonFile.writeAsStringSync(jsonEncode(value));
  }*/

  void filterCompanies(String playerName) async {
    var results = await loadLocalJson().then((value) {
      return value;
    });
    print(results);

    if (playerName.isEmpty) {
      results = companyList;
      results.sort((a, b) => a.name.compareTo(b.name));
    } else {
      results = (companyList as List)
          .where((element) => element.name
              .toString()
              .toLowerCase()
              .contains(playerName.toLowerCase()))
          .toList();
      results.sort((a, b) => a.name.compareTo(b.name));
    }

    searchedCompanies = results;
  }
}
