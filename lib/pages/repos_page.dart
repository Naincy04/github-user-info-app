import 'package:flutter/material.dart';
import 'package:github_user_info_app/components/app_bar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Map<String, dynamic> repoResponse = {};

class RepoPage extends StatefulWidget {
  const RepoPage({super.key});

  @override
  State<RepoPage> createState() => _RepoPageState();
}

class _RepoPageState extends State<RepoPage> {
  Future repocall() async {
    http.Response response;
    String url = "https://api.github.com/users/Naincy04/repos";

    response = await http.get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      setState(() {
        repoResponse = json.decode(response.body);
        print(repoResponse);
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
    return const SingleChildScrollView(
      child: Column(
        children: [
          MyAppBar(),
          Text(
            "Repositories",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
