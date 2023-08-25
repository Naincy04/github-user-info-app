import 'package:flutter/material.dart';
import 'package:github_user_info_app/components/nav_bar.dart';
import 'package:github_user_info_app/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(fontFamily: 'poppins'),
      home: const LoginPage(),
    );
  }
}
