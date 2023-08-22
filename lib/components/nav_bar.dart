import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/repos_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _selectedIndex);
  }

  int _selectedIndex = 0;
  late PageController pageController;

  List<Widget> pages = [
    const LoginPage(),
    const HomePage(),
    const RepoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          bottom: 11,
        ),
        child: WaterDropNavBar(
          waterDropColor: const Color(0xFFFF7373),
          backgroundColor: const Color.fromARGB(255, 48, 46, 46),
          barItems: [
            BarItem(
              filledIcon: Icons.home_filled,
              outlinedIcon: Icons.home_outlined,
            ),
            BarItem(
              filledIcon: Icons.folder,
              outlinedIcon: Icons.folder_outlined,
            ),
            BarItem(
              filledIcon: Icons.favorite,
              outlinedIcon: Icons.favorite_border_outlined,
            ),
            BarItem(
              filledIcon: Icons.auto_awesome_sharp,
              outlinedIcon: Icons.auto_awesome_outlined,
            ),
          ],
          selectedIndex: _selectedIndex,
          onItemSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
