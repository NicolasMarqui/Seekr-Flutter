import 'package:flutter/material.dart';

class ChangeProfileInfo extends StatelessWidget {
  const ChangeProfileInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cities = [
      "Australia",
      "Ireland",
      "Spain",
      "Malta",
      "New Zeland",
    ];

    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(2),
        padding: EdgeInsets.all(5),
        child: Card(
          elevation: 7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.supervised_user_circle),
                title: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8.0),
                      filled: true,
                      hintText: "Your email here",
                      fillColor: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(Icons.security),
                title: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8.0),
                      filled: true,
                      hintText: "Your password here",
                      fillColor: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8.0),
                      filled: true,
                      hintText: "Your Info here",
                      fillColor: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(Icons.location_on),
                title: DropdownButton<String>(
                  elevation: 0,
                  underline: SizedBox(),
                  hint: Text('City'),
                  items: cities
                      .map((c) => DropdownMenuItem(
                            value: c,
                            child: Text(c),
                          ))
                      .toList(),
                  onChanged: (_) {},
                ),
              ),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
