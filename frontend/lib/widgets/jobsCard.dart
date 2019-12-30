import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../pages/jobInfo.dart';
import '../styles/styles.dart';

class JobsCard extends StatelessWidget {
  final List jobs;

  const JobsCard({Key key, this.jobs}) : super(key: key);

  String getPostedDay(DateTime date) {
    String formatedDate = DateFormat('dd').format(date);

    String todaysDate = DateFormat('dd').format(DateTime.now());

    int days = int.parse(todaysDate) - int.parse(formatedDate);

    String result = '$days d ago';

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
        children: jobs
          .map((j) => Card(
                elevation: 7,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage('assets/images/avatar.jpg'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Text(
                              getPostedDay(j.datePosted),
                              style: AppStyles.smallDate(),
                            ),
                          ),
                          j.country == 'Australia'
                              ? Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 2, 20, 10),
                                  child: Image.asset(
                                    'assets/images/australia.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                )
                              : j.country == 'Ireland'
                                  ? Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 2, 20, 10),
                                      child: Image.asset(
                                        'assets/images/irlanda.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 2, 20, 10),
                                      child: Image.asset(
                                        'assets/images/espanha.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              j.title,
                              style: AppStyles.title_1(),
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              j.company,
                              style: AppStyles.linkDescSmall(),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text(
                                j.description,
                                style: AppStyles.linkDescSmall(),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            '\$19/hr',
                            style: AppStyles.bold(),
                          ),
                          RaisedButton(
                            child: Text('More', style: TextStyle(fontSize: 14)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => JobInfo(
                                            job: j,
                                          )));
                            },
                            color: Colors.blueAccent,
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ))
          .toList(),
    ));
  }
}
