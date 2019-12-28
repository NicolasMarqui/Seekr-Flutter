import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/newestJobs.dart';
import '../widgets/selectCity.dart';
import '../widgets/searchBox.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        title: Text(
          "Seekr",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.search),
          ),
          // Container(
          //     margin: EdgeInsets.only(top: 10, right: 10),
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     child: CircleAvatar(
          //       radius: 22,
          //       backgroundImage: AssetImage(
          //         'assets/images/avatar.jpg',
          //       ),
          //     )),
        ],
      ),
      drawer: Drawer(
        child: Text('This is a Drawer'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // SearchBox(),
            SelectCity(),
            RecentJobs(),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 400),
        color: Color(0xFF121212),
        items: <Widget>[
          Icon(Icons.home, size: 26,color: Colors.white,),
          Icon(Icons.flag, size: 26, color: Colors.white,),
          Icon(Icons.location_city, size: 26, color: Colors.white,),
          Icon(Icons.account_circle, size: 26, color: Colors.white,),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
