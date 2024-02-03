import 'package:flutter/material.dart';
import 'package:github_user_info_app/pages/accounts_page.dart';
import 'package:github_user_info_app/pages/fav_page.dart';

import '../pages/home_page.dart';
import '../pages/repos_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  void initState() {
    pageController = PageController(initialPage: _selectedIndex);
    super.initState();
  }

  int _selectedIndex = 0;
  late PageController pageController;

  final List<Widget> pages = [
    HomePage(),
    RepoPage(),
    const FavRepoPage(),
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [pages[_selectedIndex]],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Color.fromARGB(255, 31, 30, 30),
        elevation: 10.0,
        items: [
          _buildNavBarItem(Icons.home, 0, 'Home'),
          _buildNavBarItem(Icons.folder_copy_sharp, 1, 'Repos'),
          _buildNavBarItem(Icons.favorite, 2, 'Favorites'),
          _buildNavBarItem(Icons.account_circle_sharp, 4, 'Account'),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          pageController.animateToPage(
            _selectedIndex,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOutQuad,
          );
        },
      ),
    );
  }

  BottomNavigationBarItem _buildNavBarItem(
      IconData icon, int index, String label) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Icon(
          icon,
          color: _selectedIndex == index ? Color(0xFFFF7373) : Colors.grey,
        ),
      ),
      label: label,
    );
  }
}
