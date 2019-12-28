import 'package:flutter/material.dart';

import '../widgets/newestJobs.dart';
import '../widgets/selectCity.dart';
import '../widgets/searchBox.dart';

class HomePage extends StatelessWidget {

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
          Container(
              margin: EdgeInsets.only(top: 10, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(
                  'assets/images/avatar.jpg',
                ),
              )),
        ],
      ),
      drawer: Drawer(
        child: Text('This is a Drawer'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchBox(),
            SelectCity(),
            RecentJobs(),
          ],
        ),
      ),
    );
  }
}
