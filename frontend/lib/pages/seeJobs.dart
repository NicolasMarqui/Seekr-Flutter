import 'package:flutter/material.dart';

import '../widgets/displayJobs.dart';

class SeeJobs extends StatelessWidget {
  const SeeJobs({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: TabBar(
            tabs: <Widget>[
              Text('All Jobs'),
              Text('Full Time'),
              Text('Part Time'),
            ],
        ),
        body: TabBarView(
          children: <Widget>[
            DisplayJobs(typeOfJob: 'All'),
            DisplayJobs(typeOfJob: 'Full Time'),
            DisplayJobs(typeOfJob: 'Part Time'),
          ],
        ),
      ),
    );
  }
}