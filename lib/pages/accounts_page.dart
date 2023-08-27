import 'package:flutter/material.dart';
import 'package:github_user_info_app/components/app_bar.dart';

import '../components/glassmorphism.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyAppBar(
          name: 'Naincy04',
        ),
        Container(
          child: const Text(
            "About",
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
                height: 460,
                width: 750,
              )),
        ),
        SizedBox(
          height: 5,
        ),
        Glassmorphism(
            blur: 15,
            opacity: 0.2,
            radius: 20,
            child: Container(
              height: 60,
              width: 350,
            )),
      ],
    );
  }
}
