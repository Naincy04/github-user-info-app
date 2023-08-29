import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../components/Homepage_components/glassCard1/glasscard_details.dart';
import '../components/app_bar.dart';
import '../components/Homepage_components/profile_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

Map<dynamic, dynamic> mapResponse = {};

class HomePage extends StatefulWidget {
  final String username;
  const HomePage({
    super.key,
    required this.username,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final baseUrl = "https://api.github.com/users/";

  Future<void> userdetailscall(String? nameValue) async {
    http.Response response;

    response = await http.get(
      Uri.parse("https://github.com/users/$nameValue"),
    );
    if (response.statusCode == 200) {
      setState(() {
        mapResponse = json.decode(response.body);
      });
    }
  }

  @override
  void initState() async {
    // await getNames();

    super.initState();
    await userdetailscall(widget.username);
  }

  // Future getNames() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   nameValue = prefs.getString('names');
  //   print(nameValue);
  // }

  @override
  Widget build(BuildContext context) {
    // String imgUrl = "https://github.com/$widget.username.png";

    return Scaffold(
      body: Column(
        children: [
          MyAppBar(),
          widget.username == null
              ? const Text("No names saved")
              : Text(widget.username!),
          // profileDetails(imgUrl),
          glassCard1(),
        ],
      ),
    );
  }
}
