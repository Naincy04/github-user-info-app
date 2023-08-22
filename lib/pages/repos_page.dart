import 'package:flutter/material.dart';
import 'package:github_user_info_app/components/Homepage_components/glassCard1/glasscard_details.dart';
import 'package:github_user_info_app/components/app_bar.dart';

class RepoPage extends StatelessWidget {
  const RepoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        myAppBar(),
        glassCard1(),
      ],
    );
  }
}
