import 'package:fancy_bottom_bar/fancy_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:recipes/pages/tabs/discover.dart';
import 'package:recipes/pages/tabs/home.dart';
import 'package:recipes/pages/tabs/profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    final activeColor = Theme.of(context).primaryColor;
    final defaultColor = Colors.black;
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          children: <Widget>[
            HomeTab(),
            DiscoverTab(),
            ProfileTab(),
            Container(),
          ],
        ),
      ),
      bottomNavigationBar: FancyBottomBar(
        selectedColor: Theme.of(context).primaryColor,
        indicatorColor: Theme.of(context).primaryColor,
        items: [
          FancyBottomItem(
            title: Text(
              "Home",
              style: TextStyle(
                color: selectedIndex == 0 ? activeColor : defaultColor,
              ),
            ),
            icon: Icon(FrinoIcons.f_home, size: 20),
          ),
          FancyBottomItem(
            title: Text(
              "Discover",
              style: TextStyle(
                color: selectedIndex == 1 ? activeColor : defaultColor,
              ),
            ),
            icon: Icon(FrinoIcons.f_cook),
          ),
          FancyBottomItem(
            title: Text(
              "Profile",
              style: TextStyle(
                color: selectedIndex == 2 ? activeColor : defaultColor,
              ),
            ),
            icon: Icon(FrinoIcons.f_user, size: 20),
          ),
          FancyBottomItem(
            title: Text(
              "Settings",
              style: TextStyle(
                color: selectedIndex == 3 ? activeColor : defaultColor,
              ),
            ),
            icon: Icon(FrinoIcons.f_cog, size: 20),
          )
        ],
        onItemSelected: (i) {
          setState(() => selectedIndex = i);
          _pageController.animateToPage(
            i,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
        },
        selectedPosition: selectedIndex,
      ),
    );
  }
}
