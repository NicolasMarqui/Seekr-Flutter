import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final String textBox = "Search your favorite jobs";
  final double boxHeight = 110;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: boxHeight,
      width: double.infinity,
      color: Colors.blue,
      child: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/group.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black54,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    textBox,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Flexible(
                            flex: 4,
                            child: Container(
                              height: 35,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(8.0),
                                    filled: true,
                                    hintText: "e.g Cleaner",
                                    fillColor: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: Flexible(
                            flex: 1,
                            child: FlatButton(
                              color: Colors.blue,
                              child: Icon(Icons.search),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
