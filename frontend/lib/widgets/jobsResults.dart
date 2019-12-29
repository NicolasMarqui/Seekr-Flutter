import 'package:flutter/material.dart';

import '../models/jobs.dart';
import './jobsCard.dart';

class JobsResults extends StatelessWidget {
  final List<Jobs> allJobs;

  const JobsResults({Key key, this.allJobs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: <Widget>[
            JobsCard(jobs: allJobs,),
          ]
        ),
      ),
    );
  }
}
