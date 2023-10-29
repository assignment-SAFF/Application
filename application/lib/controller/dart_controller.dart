import 'dart:convert';

import 'package:application/models/users_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final getData = ChangeNotifierProvider<GetDataFromPHP>((ref) => GetDataFromPHP());

class GetDataFromPHP extends ChangeNotifier {
  List<UserModel> listDataUserModel = [];

  Future getData() async {
    listDataUserModel = [];

    String baseUrl = 'http://192.168.8.155/Application/readData.php';

    final response = await http.get(Uri.parse(baseUrl));
    final responseAsJson = jsonDecode(response.body);

    for (int i = 0; i < responseAsJson.length; i++) {
      listDataUserModel.add(UserModel.fromJson(responseAsJson[i]));
    }
    print(listDataUserModel.length);
    notifyListeners();
  }

  GetDataFromDB() {
    getData();
  }
}
