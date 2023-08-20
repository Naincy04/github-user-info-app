import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../components/app_bar.dart';
import '../components/profile_details.dart';

String stringResponse = "";
Map<dynamic, dynamic> mapResponse = {};

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future apicall() async {
    http.Response response;
    response =
        await http.get(Uri.parse("https://api.github.com/users/Naincy04"));
    if (response.statusCode == 200) {
      setState(() {
        // stringResponse = response.body;
        mapResponse = json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String imgUrl = "https://github.com/Naincy04.png";

    return Scaffold(
      body: Column(
        children: [
          myAppBar(),
          profileDetails(imgUrl),
        ],
      ),
    );
  }
}
