import 'package:flutter/material.dart';
import 'package:github_user_info_app/components/nav_bar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Material(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 280.0, top: 50.0),
            child: Image.asset("assets/images/Ellipse 1.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 285.0, top: 2.5),
            child: Image.asset("assets/images/Ellipse 2.png"),
          ),
          Image.asset(
            "assets/images/github_icon.png",
            width: 230,
            height: 145,
          ),
          const Text(
            "Welcome",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                      controller: _name,
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        label: Text("Username"),
                      ),
                      validator: (String? value) {
                        if (value != null && value.isEmpty) {
                          return "Username can't be empty";
                        }
                        return null;
                      }),
                  const SizedBox(
                    height: 25.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        {
                          //   await Future.delayed(
                          //     const Duration(seconds: 1),
                          //   );

                          String uname = _name.text.toString();

                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => NavBar()),
                          );
                        }
                      }
                    },
                    style: TextButton.styleFrom(
                      minimumSize: const Size(110, 40),
                      backgroundColor: const Color(0xFFFF7373),
                    ),
                    child: const Text("Submit"),
                  ),
                  const SizedBox(
                    height: 180.0,
                  ),
                  const Text(
                    "Made by Naincy",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
