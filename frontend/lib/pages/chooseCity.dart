import 'package:flutter/material.dart';

import '../styles/styles.dart';
import '../models/cities.dart';

class ChooseCity extends StatelessWidget {
  const ChooseCity({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Select a City: ",
          style: AppStyles.title_1(),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Row(
          children: cities
            .map((c) => Container(
                  width: double.infinity,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 171,
                          child: Image.asset(
                            c.pathName,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: screenWidth - 171,
                          child: Column(
                            children: <Widget>[
                              Text(
                                c.name,
                                textAlign: TextAlign.start,
                                style: AppStyles.title_1(),
                              ),
                              Text(
                                c.description,
                                style: AppStyles.desc(),
                              ),
                              FlatButton(
                                onPressed: () {
                                  print('See all jobs');
                                },
                                child: Text(
                                  'See all job Offers',
                                  style: AppStyles.linkText(),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ))
            .toList(),
      )),
    );
  }
}
