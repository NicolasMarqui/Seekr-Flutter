import 'package:flutter/material.dart';

import '../styles/styles.dart';
import './jobsResults.dart';
import '../models/jobs.dart';

class DisplayJobs extends StatelessWidget {
  final String typeOfJob;

  DisplayJobs({this.typeOfJob});

  final cities = [
    "Australia",
    "Ireland",
    "Spain",
    "Malta",
    "New Zeland",
  ];

  final orderBys = [
    "Newest",
    "Oldest",
    "Higher Payment",
    "Euros only",
    "Dolars only",
  ];

  final int totalResults = 279;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              margin: EdgeInsets.only(top: 0),
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new DropdownButton<String>(
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
                  new DropdownButton<String>(
                    hint: Text('Order By'),
                    elevation: 0,
                    underline: SizedBox(),
                    items: orderBys
                        .map((ord) => DropdownMenuItem(
                              value: ord,
                              child: Text(ord),
                            ))
                        .toList(),
                    onChanged: (_) {},
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 30,
              child: Text(
                'Showing $totalResults results',
                textAlign: TextAlign.start,
                style: AppStyles.linkDescSmall(),
              ),
            ),
            JobsResults(
              allJobs: jobs,
            ),
          ],
        ),
      ),
    );
  }
}
