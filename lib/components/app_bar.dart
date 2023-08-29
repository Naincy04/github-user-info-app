import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  String? nameValue = "";

  void getNames() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    nameValue = prefs.getString('names');
    setState(() {});
  }

  @override
  void initState() {
    getNames();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 19, bottom: 0.1),
              child: Image.asset(
                "assets/images/github_icon.png",
                height: 75,
                width: 85,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 0.1, top: 20),
              child: Text(
                nameValue!,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(right: 15, bottom: 0.1, top: 22),
              child: const Icon(Icons.notifications_outlined),
            ),
            const SizedBox(
              width: 1,
            ),
            Container(
              padding: const EdgeInsets.only(right: 15, bottom: 0.1, top: 19),
              width: 95,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF7373)),
                child: const Text("Exit"),
              ),
            )
          ],
        ),
      ],
    );
  }
}
