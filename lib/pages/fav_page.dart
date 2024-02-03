import 'package:flutter/material.dart';
import 'package:github_user_info_app/components/app_bar.dart';
import 'package:github_user_info_app/components/glassmorphism.dart';

class FavRepoPage extends StatefulWidget {
  const FavRepoPage({Key? key});

  @override
  _FavRepoPageState createState() => _FavRepoPageState();
}

class _FavRepoPageState extends State<FavRepoPage> {
  List<Map<String, dynamic>> favRepoResponse = []; // Initialize an empty list

  Future<void> fetchFavRepos() async {
    // Simulate fetching favorited repositories from an API or any other data source
    // Replace this with your actual logic to fetch the data
    await Future.delayed(Duration(seconds: 2));

    // Example data structure for starred repositories
    final List<Map<String, dynamic>> dummyFavRepos = [
      {'name': 'Starred Repo 1'},
      {'name': 'Starred Repo 2'},
      // Add more repositories as needed
    ];

    setState(() {
      favRepoResponse = dummyFavRepos;
    });
  }

  @override
  void initState() {
    fetchFavRepos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const MyAppBar(),
          const Text(
            "Starred Repositories",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          Column(
            children: favRepoResponse.map((repo) {
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
                    height: 60,
                    width: 750,
                    padding: const EdgeInsets.only(top: 4, left: 10),
                    child: ListTile(
                      title: Text(
                        repo['name'].toString(),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
