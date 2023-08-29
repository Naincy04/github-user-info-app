import 'package:flutter/material.dart';
import 'package:github_user_info_app/components/list_providers.dart';
import 'package:github_user_info_app/pages/login_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ListProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(brightness: Brightness.dark),
        theme: ThemeData(fontFamily: 'poppins'),
        home: const LoginPage(),
      ),
    );
  }
}
