import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../styles/styles.dart';
import '../widgets/profileInfo.dart';
import '../widgets/profileSkills.dart';
import '../widgets/profileExp.dart';
import '../widgets/profileHelp.dart';
import '../models/users.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> options = [
      "Info",
      "Skills",
      "Experience",
    ];
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                ),
                Text(user.name, style: AppStyles.title_1()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Looking for jobs in Sydney',
                      style: AppStyles.linkDescSmall(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Image.asset(
                        'assets/images/australia.png',
                        height: 19,
                        width: 19,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: TabBar(
              controller: _tabController,
              tabs: options
                  .map((o) => Tab(
                        child: Text(o),
                      ))
                  .toList(),
            ),
          ),
          Flexible(
            flex: 9,
            fit: FlexFit.loose,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                SingleChildScrollView(
                    child: ProfileInfo(
                  user: user,
                )),
                ProfileSkills(
                  user: user,
                ),
                ProfileExperience(
                  user: user,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
