import 'package:flutter/material.dart';

import '../styles/styles.dart';
import '../models/jobs.dart';

class RecentJobs extends StatelessWidget {
  const RecentJobs({Key key}) : super(key: key);

  Widget displayImage(String c){

    print(c);

    switch(c){
      case 'Australia':
        return Image(image: AssetImage('assets/images/australia.png'),);
      break;
      case 'Ireland':
        return Image(image: AssetImage('assets/images/irlanda.png'),);
      break;
      case 'Spain':
        return Image(image: AssetImage('assets/images/spain.png'),);
    }

    return Image(image: AssetImage('assets/images/spain.png'),);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: jobs.map((j) => Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 100,
          child: Card(
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child:Image(image: AssetImage('assets/images/australia.png'),),
                ),
                Flexible(
                  flex: 3,
                  child: Column(
                    children: <Widget>[
                      Text(j.title, style: AppStyles.title_1(),),
                      Text(j.company, style: AppStyles.desc(),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )).toList(),
      ),
    );
  }
}
