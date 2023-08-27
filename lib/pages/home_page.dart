import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../components/Homepage_components/glassCard1/glasscard_details.dart';
import '../components/app_bar.dart';
import '../components/Homepage_components/profile_details.dart';

String stringResponse = "";
Map<dynamic, dynamic> mapResponse = {};
Map<dynamic, dynamic> mapDataResponse = {};

class HomePage extends StatefulWidget {
  String name;
  HomePage({super.key, required this.name});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final baseUrl = "https://api.github.com/users/";

  Future userdetailscall() async {
    http.Response response;

    response = await http.get(
      Uri.parse("https://api.github.com/users/Naincy04"),
    );
    if (response.statusCode == 200) {
      setState(() {
        // stringResponse = response.body;
        mapResponse = json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    userdetailscall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String imgUrl = "https://github.com/Naincy04.png";

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyAppBar(
              name: 'Naincy04',
            ),
            profileDetails(imgUrl),
            glassCard1(),
          ],
        ),
      ),
    );
  }
}
