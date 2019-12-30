import 'package:flutter/material.dart';

import '../styles/styles.dart';
import '../widgets/profileInfo.dart';
import '../widgets/profileSkills.dart';
import '../widgets/profileExp.dart';
import '../widgets/profileHelp.dart';

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
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> options = [
      "Info",
      "Skills",
      "Exp",
      "Help",
    ];
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
                Text('Nicolas Marqui', style: AppStyles.title_1()),
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
            child: TabBar(
              controller: _tabController,
              tabs: options
                  .map((o) => Tab(
                        child: Text(o),
                      ))
                  .toList(),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                ProfileInfo(),
                ProfileSkills(),
                ProfileExperience(),
                ProfileHelp(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileExp {
}
