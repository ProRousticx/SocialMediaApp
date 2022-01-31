import 'package:flutter/material.dart';
import 'package:myprofile/constants/my_styles.dart';
import 'package:myprofile/views/tabs/chat_tab.dart';
import 'package:myprofile/views/tabs/home_tab.dart';
import 'package:myprofile/views/tabs/profile_tab.dart';
import 'package:myprofile/views/tabs/search_tab.dart';

import '../constants/my_colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: const [
            HomeTab(),
            ChatTab(),
            SearchTab(),
            ProfileTab(uid: "pradeepto"),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //fixedColor: kBottomNavigationBGColor,
        selectedItemColor: kBottomNavigationSelectedColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
