import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../components/Homepage_components/glassCard1/glasscard_details.dart';
import '../components/app_bar.dart';
import '../components/Homepage_components/profile_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

Map<dynamic, dynamic> mapResponse = {};

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? nameValue;
  // final baseUrl = "https://api.github.com/users/";

  Future<void> userdetailscall(String? nameValue) async {
    http.Response response;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    nameValue = prefs.getString('names');

    print(nameValue);

    response = await http.get(
      Uri.parse("http://api.github.com/users/$nameValue"),
    );
    print(response.body);
    if (response.statusCode == 200) {
      setState(() {
        mapResponse = json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    // getNames();

    super.initState();
    userdetailscall(nameValue);
  }

  // void getNames() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   nameValue = prefs.getString('names');
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    String imgUrl = "https://github.com/$nameValue.png";

    return Scaffold(
      body: Column(
        children: [
          MyAppBar(),
          // nameValue == null ? const Text("No names saved") : Text(nameValue!),
          profileDetails(imgUrl),
          glassCard1(),
        ],
      ),
    );
  }
}
