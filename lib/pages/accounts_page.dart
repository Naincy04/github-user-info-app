import 'package:flutter/material.dart';
import 'package:github_user_info_app/components/app_bar.dart';

import '../components/glassmorphism.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    String imgUrl = "https://github.com/Naincy04.png";
    return Column(
      children: [
        const MyAppBar(),
        const Text(
          "About",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
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
            child: SizedBox(
              height: 460,
              width: 750,
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 13)),
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(imgUrl),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Naincy Kumari",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Glassmorphism(
            blur: 15,
            opacity: 0.2,
            radius: 20,
            child: Container(
              padding: const EdgeInsets.all(20),
              height: 60,
              width: 350,
              child: const Text(
                "Submit Feedback",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            )),
      ],
    );
  }
}
