import 'package:flutter/material.dart';

import '../styles/styles.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI.',
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
      ),
    );
  }
}
