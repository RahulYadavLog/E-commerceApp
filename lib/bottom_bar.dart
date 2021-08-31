import 'package:bottom_bar/screens/cart.dart';
import 'package:bottom_bar/screens/feeds.dart';
import 'package:bottom_bar/screens/home.dart';
import 'package:bottom_bar/screens/search.dart';
import 'package:bottom_bar/screens/user.dart';
import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List _pages = [
    HomeScreen(),
    FeedsScreen(),
    SearchScreen(),
    CartScreen(),
    UserInfo()
  ];
  // List _title=["Home Page","Feeds Page","Search Page","Cart Page","User Page"];

  // var _pages;
  int _selectedIndex = 0;

// @override
//   void initState() {
//    _pages=[
//      {'page':HomeScreen(),},
//       {'page':FeedsScreen(),},
//        {'page':SearchScreen(),},
//         {'page':CartScreen(),},
//          {'page':UserScreen(),},
//    ];
//     super.initState();
//   }
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(centerTitle: true,
      // title: Text(_title[_selectedIndex]),),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        notchMargin: 1,
        clipBehavior: Clip.antiAlias,
        //  elevation: 5,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: kBottomNavigationBarHeight,
          decoration:
              BoxDecoration(border: Border(top: BorderSide(width: 0.5))),
          child: BottomNavigationBar(
            elevation: 5,
            onTap: _selectedPage,
            backgroundColor: Theme.of(context).primaryColor,
            // ignore: deprecated_member_use
            unselectedItemColor: Theme.of(context).textSelectionColor,
            selectedItemColor: Colors.purple,
            currentIndex: _selectedIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                tooltip: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.rss_feed),
                label: "Feeds",
                tooltip: "Feeds",
              ),
              BottomNavigationBarItem(
                activeIcon: null,
                icon: Icon(null),
                label: "Search",
                tooltip: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: "Cart",
                tooltip: "Cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "User",
                tooltip: "User",
              )
            ],
          ),
        ),
      ),

      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () {
            _selectedPage(2);
          },
          child: Icon(Icons.search),
          elevation: 5,
          backgroundColor: Colors.purple,
          tooltip: "Search",
        ),
      ),
    );
  }
}
