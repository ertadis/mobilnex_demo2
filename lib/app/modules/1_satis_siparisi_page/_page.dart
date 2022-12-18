import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mobilnex_demo3/app/constants/constants.dart';
import 'package:mobilnex_demo3/app/models/Companies.dart';
import 'package:mobilnex_demo3/app/modules/1_satis_siparisi_page/_controller.dart';

class SatisSiparisiPage extends StatelessWidget {
  const SatisSiparisiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SatisSiparisiController>(
      builder: (controller) => Scaffold(
        backgroundColor: blackBackgroundColor,
        appBar: AppBar(
          backgroundColor: blackBackgroundColor,
          title: const Text(
            "Satış Siparişi",
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
        body: SafeArea(child: _Body()),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          elevation: 0,
          backgroundColor: orangeBackgroundColor,
          child: IconButton(
            onPressed: () {
              Get.to(SatisSiparisiFloatingButtonPage());
            },
            icon: Icon(Icons.add),
            tooltip: "ekle",
          ),
        ),
      ),
    );
  }
}

class SatisSiparisiFloatingButtonPage extends StatelessWidget {
  const SatisSiparisiFloatingButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SatisSiparisiController>(
      builder: (controller) => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: blackBackgroundColor,
        appBar: AppBar(
          backgroundColor: blackBackgroundColor,
          title: const Text(
            "Cari Seçiniz",
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
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Get.to(_AddItemsMenu());
              },
              icon: Icon(Icons.add),
              tooltip: "Back",
            )
          ],
        ),
        body: SafeArea(child: _Body()),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 1, 15, 15),
      child: _Search(),
    );
  }
}

class _Search extends GetView<SatisSiparisiController> {
  _Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 58,
          decoration: const BoxDecoration(
            color: greyBackgroundColor,
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(10),
              left: Radius.circular(10),
            ),
          ),
          child: TextField(
            onChanged: (value) => controller.filterCompanies(value),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide:
                const BorderSide(color: orangeBackgroundColor, width: 2.0),
                borderRadius: BorderRadius.circular(15.0),
              ),
              focusColor: orangeBackgroundColor,
              hintText: "Ad veya Kod Giriniz",
              hintStyle: TextStyle(color: orangeBackgroundColor),
              icon: IconButton(
                onPressed: () {},
                padding: EdgeInsets.fromLTRB(15, 1, 1, 1),
                icon: const Icon(
                  Icons.camera_alt,
                  color: whiteBackgroundColor,
                ),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(0),
                  left: Radius.circular(0),
                ),
              ),
            ),
            style: const TextStyle(
              backgroundColor: greyBackgroundColor,
              color: whiteBackgroundColor,
            ),
          ),
        ),
        SizedBox(height: 10),
        _ItemsList(),
      ],
    );
  }
}

class _ItemsList extends GetView<SatisSiparisiController> {
  _ItemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List>(
        future: controller.searchedCompanies,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              // Success case
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data![index]['id']),
                    subtitle: Text(snapshot.data![index]['name']),
                    trailing: Text(snapshot.data![index]['address']),
                  );
                },
                itemCount: snapshot.data?.length,
              );
            }
            // Error case
            return Text('Something went wrong');
          } else {
            // Loading data
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}

class _AddItemsMenu extends GetView<SatisSiparisiController> {
  _AddItemsMenu({Key? key}) : super(key: key);

  var tmp;

  @override
  Widget build(BuildContext context) {
    // var tmp = controller.decodedJson.value;
    return GetBuilder<SatisSiparisiController>(
      builder: (controller) => Scaffold(
        backgroundColor: blackBackgroundColor,
        appBar: AppBar(
          backgroundColor: blackBackgroundColor,
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
        body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
          margin: EdgeInsets.fromLTRB(15, 1, 15, 50),
          decoration: BoxDecoration(
              color: greyBackgroundColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(15),
                right: Radius.circular(15),
              ),
          ),
          child: Column(
              children: [
                TextFormField(
                  onChanged: (value) {
                    tmp[0].id = int.parse(value);
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: orangeBackgroundColor, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusColor: orangeBackgroundColor,
                    hintText: "Kodu",
                    hintStyle: TextStyle(color: orangeBackgroundColor),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(0),
                        left: Radius.circular(0),
                      ),
                    ),
                  ),
                  style: const TextStyle(
                    backgroundColor: greyBackgroundColor,
                    color: whiteBackgroundColor,
                  ),
                ),
                TextFormField(
                  onChanged: (value) {
                    tmp[0].name = value;
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: orangeBackgroundColor, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusColor: orangeBackgroundColor,
                    hintText: "Adı",
                    hintStyle: TextStyle(color: orangeBackgroundColor),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(0),
                        left: Radius.circular(0),
                      ),
                    ),
                  ),
                  style: const TextStyle(
                    backgroundColor: greyBackgroundColor,
                    color: whiteBackgroundColor,
                  ),
                ),
                TextFormField(
                  onChanged: (value) {
                    tmp[0].address = value;
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: orangeBackgroundColor, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusColor: orangeBackgroundColor,
                    hintText: "Adres",
                    hintStyle: TextStyle(color: orangeBackgroundColor),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(0),
                        left: Radius.circular(0),
                      ),
                    ),
                  ),
                  style: const TextStyle(
                    backgroundColor: greyBackgroundColor,
                    color: whiteBackgroundColor,
                  ),
                ),
                TextFormField(
                  onChanged: (value) {
                    tmp[0].address2 = value;
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: orangeBackgroundColor, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusColor: orangeBackgroundColor,
                    hintText: "Adres2",
                    hintStyle: TextStyle(color: orangeBackgroundColor),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(0),
                        left: Radius.circular(0),
                      ),
                    ),
                  ),
                  style: const TextStyle(
                    backgroundColor: greyBackgroundColor,
                    color: whiteBackgroundColor,
                  ),
                ),
                TextFormField(
                  onChanged: (value) {
                    tmp[0].city = value;
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: orangeBackgroundColor, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusColor: orangeBackgroundColor,
                    hintText: "Şehir",
                    hintStyle: TextStyle(color: orangeBackgroundColor),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(0),
                        left: Radius.circular(0),
                      ),
                    ),
                  ),
                  style: const TextStyle(
                    backgroundColor: greyBackgroundColor,
                    color: whiteBackgroundColor,
                  ),
                ),
                TextFormField(
                  onChanged: (value) {
                    tmp[0].country = value;
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: orangeBackgroundColor, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusColor: orangeBackgroundColor,
                    hintText: "İlçe",
                    hintStyle: TextStyle(color: orangeBackgroundColor),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(0),
                        left: Radius.circular(0),
                      ),
                    ),
                  ),
                  style: const TextStyle(
                    backgroundColor: greyBackgroundColor,
                    color: whiteBackgroundColor,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        onChanged: (value) {
                          tmp[0].taxAdministration = value;
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: orangeBackgroundColor, width: 2.0),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          focusColor: orangeBackgroundColor,
                          hintText: "Vergi Dairesi",
                          hintStyle: TextStyle(color: orangeBackgroundColor),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(0),
                              left: Radius.circular(0),
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          backgroundColor: greyBackgroundColor,
                          color: whiteBackgroundColor,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        onChanged: (value) {
                          tmp[0].taxNo = value;
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: orangeBackgroundColor, width: 2.0),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          focusColor: orangeBackgroundColor,
                          hintText: "Vergi No",
                          hintStyle: TextStyle(color: orangeBackgroundColor),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(0),
                              left: Radius.circular(0),
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          backgroundColor: greyBackgroundColor,
                          color: whiteBackgroundColor,
                        ),
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  onChanged: (value) {
                    tmp[0].tcIdNo = value;
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: orangeBackgroundColor, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusColor: orangeBackgroundColor,
                    hintText: "TC Kimlik No",
                    hintStyle: TextStyle(color: orangeBackgroundColor),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(0),
                        left: Radius.circular(0),
                      ),
                    ),
                  ),
                  style: const TextStyle(
                    backgroundColor: greyBackgroundColor,
                    color: whiteBackgroundColor,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        onChanged: (value) {
                          tmp[0].phone1 = value;
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: orangeBackgroundColor, width: 2.0),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          focusColor: orangeBackgroundColor,
                          hintText: "Telefon 1",
                          hintStyle: TextStyle(color: orangeBackgroundColor),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(0),
                              left: Radius.circular(0),
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          backgroundColor: greyBackgroundColor,
                          color: whiteBackgroundColor,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        onChanged: (value) {
                          tmp[0].phone2 = value;
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: orangeBackgroundColor, width: 2.0),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          focusColor: orangeBackgroundColor,
                          hintText: "Telefon 2",
                          hintStyle: TextStyle(color: orangeBackgroundColor),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(0),
                              left: Radius.circular(0),
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          backgroundColor: greyBackgroundColor,
                          color: whiteBackgroundColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        onChanged: (value) {
                          tmp[0].fax = value;
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: orangeBackgroundColor, width: 2.0),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          focusColor: orangeBackgroundColor,
                          hintText: "Faks",
                          hintStyle: TextStyle(color: orangeBackgroundColor),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(0),
                              left: Radius.circular(0),
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          backgroundColor: greyBackgroundColor,
                          color: whiteBackgroundColor,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        onChanged: (value) {
                          tmp[0].gsm = value;
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: orangeBackgroundColor, width: 2.0),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          focusColor: orangeBackgroundColor,
                          hintText: "Gsm",
                          hintStyle: TextStyle(color: orangeBackgroundColor),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(0),
                              left: Radius.circular(0),
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          backgroundColor: greyBackgroundColor,
                          color: whiteBackgroundColor,
                        ),
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  onChanged: (value) {
                    tmp[0].email = value;
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: orangeBackgroundColor, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusColor: orangeBackgroundColor,
                    hintText: "Email",
                    hintStyle: TextStyle(color: orangeBackgroundColor),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(0),
                        left: Radius.circular(0),
                      ),
                    ),
                  ),
                  style: const TextStyle(
                    backgroundColor: greyBackgroundColor,
                    color: whiteBackgroundColor,
                  ),
                ),
              ],
          ),
        ),
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          elevation: 0,
          backgroundColor: orangeBackgroundColor,
          child: IconButton(
            onPressed: () {
              print(tmp);
              print(tmp.runtimeType);
              //controller.companyList.addAll(tmp);
              //controller.writeJson(controller.companyList);
              Get.back();
            },
            icon: Icon(Icons.done),
            tooltip: "ekle",
          ),
        ),
      ),
    );
  }
}

/*
Widget build(BuildContext context) {
  return new MaterialApp(
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text('Get Data'),
      ),
      body: FutureBuilder<List>(
        future: fetchJSON(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              // Success case
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data[index]['user']),
                    subtitle: Text(snapshot.data[index]['team']),
                    trailing: Text(snapshot.data[index]['id']),
                  );
                },
                itemCount: snapshot.data.length,
              );
            }
            // Error case
            return Text('Something went wrong');
          } else {
            // Loading data
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    ),
  );
}
*/