import 'package:flutter/material.dart';
import 'package:frontend/styles/styles.dart';

class ProfileExperience extends StatelessWidget {
  final user;

  const ProfileExperience({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Column(
        children: user.experience
            .map<Widget>((ex) => Card(
                  elevation: 7,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.supervisor_account),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                ex.title,
                                style: AppStyles.title_1(),
                              ),
                              Text(
                                ex.company,
                                style: AppStyles.linkDescSmall(),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              ex.stillWorking
                                  ? Icon(Icons.check)
                                  : Icon(Icons.close),
                              ex.stillWorking
                                  ? Text(
                                      'Still Working',
                                      style: AppStyles.linkDescSmall(),
                                    )
                                  : Text(
                                      'Not Working',
                                      style: AppStyles.linkDescSmall(),
                                    ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
