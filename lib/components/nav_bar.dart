import 'package:flutter/material.dart';
import 'package:github_user_info_app/pages/accounts_page.dart';
import 'package:github_user_info_app/pages/fav_page.dart';
import 'package:github_user_info_app/pages/trending_page.dart';

import '../pages/home_page.dart';
import '../pages/repos_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    super.key,
  });

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

  final List<Widget> pages = [
    HomePage(
      username: 'Naincy04',
    ),
    const RepoPage(),
    const FavRepoPage(),
    const TrendingPage(),
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [pages[_selectedIndex]],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xFFFF7373),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.folder_copy_sharp,
                color: Color(0xFFFF7373),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Color(0xFFFF7373),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
                color: Color(0xFFFF7373),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_sharp,
                color: Color(0xFFFF7373),
              ),
              label: ''),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          pageController.animateToPage(_selectedIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad);
        },
      ),
    );
  }
}
