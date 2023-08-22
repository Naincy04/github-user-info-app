import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../components/Homepage_components/glassCard1/glasscard_details.dart';
import '../components/app_bar.dart';
import '../components/Homepage_components/profile_details.dart';
import '../components/nav_bar.dart';

String stringResponse = "";
Map<dynamic, dynamic> mapResponse = {};
Map<dynamic, dynamic> mapDataResponse = {};

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future apicall() async {
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

  Future apicall2() async {
    http.Response response;
    response = await http.get(
      Uri.parse(
          "https://github-readme-stats.vercel.app/api?username=Naincy04&show=reviews,discussions_started,discussions_answered,prs_merged,prs_merged_percentage"),
    );
    if (response.statusCode == 200) {
      setState(() {
        // stringResponse = response.body;
        mapDataResponse = json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    apicall();
    apicall2();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String imgUrl = "https://github.com/Naincy04.png";

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            myAppBar(),
            profileDetails(imgUrl),
            glassCard1(),
          ],
        ),
      ),
    );
  }
}
