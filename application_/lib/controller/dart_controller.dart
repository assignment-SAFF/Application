import 'dart:convert';
import 'package:application_/models/users_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final getDatatUser =
    ChangeNotifierProvider<GetDatatFromPHP>((ref) => GetDatatFromPHP());

class GetDatatFromPHP extends ChangeNotifier {
  List<UserModel> listDataUserModel = [];

  GetDatatFromPHP() {
    getDatat();
  }
  Future getDatat() async {
    listDataUserModel = [];
    try {
      String baseUrl = 'http://192.168.8.165/Application/readData.php';
      final response = await http.get(Uri.parse(baseUrl));

      final responseAsJson = jsonDecode(response.body);

      for (int i = 0; i < responseAsJson.length; i++) {
        listDataUserModel.add(UserModel.fromJson(responseAsJson[i]));
      }
    } catch (e) {
      print(e.toString());
    }
          notifyListeners();
  }

}