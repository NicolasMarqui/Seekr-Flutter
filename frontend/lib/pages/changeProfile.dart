import 'package:flutter/material.dart';

class ChangeProfile extends StatelessWidget {
  const ChangeProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            Icon(Icons.info),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('My Info'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('My account'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[Text('My info'), Text('My account')],
        ),
      ),
    );
  }
}
