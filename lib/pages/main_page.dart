// import 'package:flutter/material.dart';
// import 'package:github_user_info_app/pages/repos_page.dart';
// import 'package:github_user_info_app/pages/trending_page.dart';
// import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

// import 'fav_page.dart';

// class MainPage extends StatefulWidget {
//   MainPage({super.key});

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   int _selectedIndex = 0;

//   final _pageController = PageController(
//     initialPage: 0,
//   );

//   final pages = PageView(
//       controller: PageController(
//         initialPage: 0,
//       ),
//       children: [
//         MainPage(),
//         const RepoPage(),
//         const FavRepoPage(),
//         const Trending(),
//       ]);

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Color(0xFFFF7373),
//         onTap: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//       ),
//       body: const Text("Hello"),
//     );
//   }
// }
