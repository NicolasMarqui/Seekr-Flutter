import 'package:flutter/material.dart';

import '../pages/home.dart';
import '../styles/styles.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key key}) : super(key: key);

  final double profileCompletion = 10;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Color(0xFF121212),
          child: DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'assets/images/avatar.jpg',
                    height: 100,
                    width: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    'Profile Completion $profileCompletion%',
                    style: AppStyles.linkDescSmall(),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          color: Color(0xFF121212),
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: Text(
                  'About Me',
                  style: AppStyles.titleWhite(),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(page: 3,)));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'My Skills',
                  style: AppStyles.titleWhite(),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'My Experiences',
                  style: AppStyles.titleWhite(),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: Text(
                  'My Curriculum',
                  style: AppStyles.titleWhite(),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.location_city,
                  color: Colors.white,
                ),
                title: Text(
                  'Change Place',
                  style: AppStyles.titleWhite(),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                title: Text(
                  'My Settings',
                  style: AppStyles.titleWhite(),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 160,
          color: Color(0xFF121212),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              ListTile(
                leading: Icon(Icons.power_settings_new, color: Colors.white,),
                title: Text(
                  'Exit',
                  style: AppStyles.titleWhite(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
