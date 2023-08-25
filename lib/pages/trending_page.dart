import 'package:flutter/material.dart';
import 'package:github_user_info_app/components/app_bar.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        myAppBar(),
        Column(
          children: const [
            Text("Hello Trending page"),
          ],
        ),
      ],
    );
  }
}
