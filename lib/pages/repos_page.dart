import 'package:flutter/material.dart';
import 'package:github_user_info_app/components/app_bar.dart';
import 'package:github_user_info_app/components/glassmorphism.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RepoPage extends StatefulWidget {
  RepoPage({Key? key});

  @override
  State<RepoPage> createState() => _RepoPageState();
}

class _RepoPageState extends State<RepoPage> {
  List<Map<String, dynamic>> repoResponse = [];

  Future<void> repocall() async {
    http.Response response;
    String url = "https://api.github.com/users/Naincy04/repos";

    response = await http.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200) {
      setState(() {
        repoResponse =
            List<Map<String, dynamic>>.from(json.decode(response.body));
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
    return Column(
      children: [
        const MyAppBar(),
        const Text(
          "Repositories",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: repoResponse.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Glassmorphism(
                  blur: 15,
                  opacity: 0.2,
                  radius: 20,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: 750,
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 10,
                    ),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          repoResponse[index]['name'].toString(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          repoResponse[index]['description'].toString(),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
