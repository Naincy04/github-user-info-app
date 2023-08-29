import 'package:flutter/material.dart';
import 'package:github_user_info_app/components/app_bar.dart';
import 'package:github_user_info_app/pages/repos_page.dart';

import '../components/glassmorphism.dart';

class FavRepoPage extends StatelessWidget {
  const FavRepoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          children: [
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
      ],
    );
  }
}
