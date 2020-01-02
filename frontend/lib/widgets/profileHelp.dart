import 'package:flutter/material.dart';

class ProfileAdd extends StatelessWidget {
  const ProfileAdd({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
            onPressed: (){},
            child: Text('Add new Skill'),
            color: Colors.blue,
            textColor: Colors.white,
          ),
          RaisedButton(
            onPressed: (){},
            child: Text('Add new Experience'),
            color: Colors.blue,
            textColor: Colors.white,
          ),
          RaisedButton(
            onPressed: (){},
            child: Text('Add your curriculum'),
            color: Colors.blue,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}