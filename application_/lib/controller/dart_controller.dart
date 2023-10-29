

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final getDatat =ChangeNotifierProvider<GetDatatFromPHP>((ref) => GetDatatFromPHP());

class GetDatatFromPHP extends ChangeNotifier{
  
GetDatatFromPHP(){
  getDatat();
}
  Future getDatat() async{
    String baseUrl = 'http://192.168.8.155/Application/readData.php';

    final response = await http.get(Uri.parse(baseUrl));

    print(response.body);
  }


}