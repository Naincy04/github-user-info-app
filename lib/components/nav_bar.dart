import 'package:flutter/material.dart';
import 'package:github_user_info_app/pages/fav_page.dart';
import 'package:github_user_info_app/pages/trending_page.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

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
      name: 'uname',
    ),
    const RepoPage(),
    const FavRepoPage(),
    const Trending(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [pages[_selectedIndex]],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          bottom: 11,
        ),
        child: WaterDropNavBar(
          waterDropColor: const Color(0xFFFF7373),
          backgroundColor: const Color.fromARGB(255, 88, 88, 88),
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
            pageController.animateToPage(_selectedIndex,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutQuad);
          },
        ),
      ),
    );
  }
}

class HomePage {
  String stringResponse = "";
Map<dynamic, dynamic> mapResponse = {};
Map<dynamic, dynamic> mapDataResponse = {};

class HomePage extends StatefulWidget {
  String name;
  HomePage({super.key, required this.name});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final baseUrl = "https://api.github.com/users/";

  Future apicall() async {
    http.Response response;

    response = await http.get(
      Uri.parse("$baseUrl${widget.name}"),
    );
    if (response.statusCode == 200) {
      setState(() {
        // stringResponse = response.body;
        mapResponse = json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String imgUrl = "https://github.com/Naincy04.png";

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            myAppBar(),
            Text(widget.name),
            profileDetails(imgUrl),
            glassCard1(),
          ],
        ),
      ),
    );
  }
}
