import 'package:flutter/material.dart';
import 'package:github_user_info_app/components/app_bar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../components/glassmorphism.dart';

String stringResponse = "";
Map<dynamic, dynamic> repoResponse = {};
Map<dynamic, dynamic> mapDataResponse = {};

class RepoPage extends StatefulWidget {
  const RepoPage({super.key});

  @override
  State<RepoPage> createState() => _RepoPageState();
}

class _RepoPageState extends State<RepoPage> {
  Future repocall() async {
    http.Response response;

    response = await http.get(
      Uri.parse("https://api.github.com/users/Naincy04/repos"),
    );
    if (response.statusCode == 200) {
      setState(() {
        // stringResponse = response.body;
        repoResponse = json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    repocall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MyAppBar(
            name: 'Naincy04',
          ),
          Container(
            child: const Text(
              "Repositories",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Glassmorphism(
                blur: 15,
                opacity: 0.2,
                radius: 20,
                child: Container(
                  height: 60,
                  width: 750,
                  padding: const EdgeInsets.only(top: 4, left: 10),
                  child: ListTile(
                    title: Text(
                      repoResponse['name'].toString(),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
