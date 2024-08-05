import 'package:flutter/material.dart';
import 'package:netflix_clone/util/color_constraints.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';
import 'package:netflix_clone/view/main_page/main_page.dart';
import 'package:netflix_clone/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix_clone/view/searchscreen/search_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  List Screen = [
    MainPage(),
    SearchScreen(),
    ComingSoonScreen(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.amber,
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorConstraints.MainWhite,
        unselectedItemColor: ColorConstraints.darkgrey,
        currentIndex: selectedIndex,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        backgroundColor: ColorConstraints.Mainblack,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_rounded),
              label: "Comming soon"),
          BottomNavigationBarItem(
              icon: Icon(Icons.download), label: "Downloads"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More")
        ],
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
