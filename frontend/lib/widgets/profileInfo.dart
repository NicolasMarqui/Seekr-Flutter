import 'package:flutter/material.dart';

import '../styles/styles.dart';

class ProfileInfo extends StatelessWidget {
  final user;

  const ProfileInfo({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            user.info,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: <Widget>[
                Text(
                  'Social Networks',
                  style: AppStyles.bold(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.access_time),
                      onPressed: () {},
                      tooltip: 'Hallo',
                    ),
                    IconButton(
                      icon: Icon(Icons.access_time),
                      onPressed: () {},
                      tooltip: 'Hallo',
                    ),
                    IconButton(
                      icon: Icon(Icons.access_time),
                      onPressed: () {},
                      tooltip: 'Hallo',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: RaisedButton(
              onPressed: () {},
              child: Text('Talk to Me'),
              color: Colors.blue,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
