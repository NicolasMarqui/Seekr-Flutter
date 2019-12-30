import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Find Jobs'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8.0),
                    filled: true,
                    hintText: "e.g Cleaner",
                    fillColor: Colors.white),
              ),
            ),
          ),

          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: RaisedButton(
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
