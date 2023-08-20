import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../components/card1.dart';
import '../components/card2.dart';
import '../components/glass_cards.dart';

import '../components/app_bar.dart';
import '../components/profile_details.dart';

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

  @override
  void initState() {
    apicall();
    apicall2();
    super.initState();
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
  Widget build(BuildContext context) {
    String imgUrl = "https://github.com/Naincy04.png";

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            myAppBar(),
            profileDetails(imgUrl),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 6.0),
                ),
                const Text(
                  "Bio",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  mapResponse['bio'].toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Github stats",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    const glassCards(),
                    Column(
                      children: [
                        card1(),
                        card2(),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 30.0,
                                vertical: 20.0,
                              ),
                              child: Text(
                                "Total repositories  :  ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Text(
                              mapDataResponse['reviews'].toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
