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
              height: MediaQuery.of(context).size.height * 0.3,
              width: 750,
              child: const Column(
                children: [
                  Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 1)),
                  Text(
                    "Dear Users \nThis is a simple app to get the details of a github user. \nYou can get the details of the user by entering the username in the search bar. \nYou can also get the details of the repositories and the starred repositories of the user. \nYou can also submit the feedback of the app. \nHope you like the app. \nThank You.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
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
