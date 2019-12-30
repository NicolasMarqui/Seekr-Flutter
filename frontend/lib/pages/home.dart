import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import '../widgets/newestJobs.dart';
import '../widgets/selectCity.dart';
import '../pages/seeJobs.dart';
import '../pages/profile.dart';
import '../pages/favorites.dart';
import '../pages/search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 3;

  final _pages = [
    HomePageContent(),
    SeeJobs(),
    Favorite(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
                  icon: new Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                )),
        title: InkWell(
          child: Text(
            "Seekr",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
          ),
          onTap: (){
            setState(() {
              _page = 0;
            });
          },
        ),
        centerTitle: true,
        actions: <Widget>[
          InkWell(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.search),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Search(),
                    ));
              }),
        ],
      ),
      drawer: Drawer(
        child: SideDrawer(),
      ),
      body: _pages[_page],
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 400),
        color: Color(0xFF121212),
        items: <Widget>[
          Icon(
            Icons.home,
            size: 26,
            color: Colors.white,
          ),
          Icon(
            Icons.flag,
            size: 26,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            size: 26,
            color: Colors.white,
          ),
          Icon(
            Icons.account_circle,
            size: 26,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // SearchBox(),
          SelectCity(),
          RecentJobs(),
        ],
      ),
    );
  }
}
