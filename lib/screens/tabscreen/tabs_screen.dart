import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
import 'package:test/screens/home_screen/home_screen.dart';
import 'package:test/screens/profile_screen/profile_screen.dart';
import 'package:test/screens/search_screen/search_screen.dart';
import 'package:test/screens/wishlist_screen/wishlist_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Widget> tabs = [];
  int tabIndex = 0;

  @override
  void initState() {
    super.initState();
    tabs = [
      HomeScreen(),
      SearchScreen(),
      WishlistScreen(),
      ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.deepPurple,
        color: Colors.grey.shade200,
        backgroundColor: Colors.white,
        
        items: [
          Icon(
            CupertinoIcons.home,
            size: 30,
            color: tabIndex == 0 ? Colors.white : Colors.black,
          ),
          Icon(CupertinoIcons.search,
              size: 30, color: tabIndex == 1 ? Colors.white : Colors.black),
          Icon(CupertinoIcons.heart,
              size: 30, color: tabIndex == 2 ? Colors.white : Colors.black),
          Icon(CupertinoIcons.profile_circled,
              size: 30, color: tabIndex == 3 ? Colors.white : Colors.black),
        ],
        onTap: (value) => setState(() {
          tabIndex = value;
        }),
      ),
      body: tabs[tabIndex],
    );
  }
}
