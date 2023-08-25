import 'package:flutter/material.dart';
import 'package:github_user_info_app/components/app_bar.dart';

import '../components/glassmorphism.dart';

class RepoPage extends StatelessWidget {
  const RepoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          myAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Glassmorphism(
              blur: 15,
              opacity: 0.2,
              radius: 20,
              child: Container(
                height: 80,
                padding: const EdgeInsets.all(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
