import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Color(0xFF121212),
          child: DrawerHeader(
            child: Container(
              height: 30,
              width: 30,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/avatar.jpg'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}