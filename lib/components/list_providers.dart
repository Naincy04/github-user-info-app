import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListProvider extends ChangeNotifier {
  String stringResponse = "";
  Map<dynamic, dynamic> mapResponse = {};
  Future userdetailscall() async {
    http.Response response;

    response = await http.get(
      Uri.parse("https://api.github.com/users/Naincy04"),
    );
    if (response.statusCode == 200) {
      // stringResponse = response.body;
      mapResponse = json.decode(response.body);
    }
  }
}
