import 'package:flutter/material.dart';

class ProfileSkills extends StatelessWidget {
  final user;

  const ProfileSkills({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Column(
        children: user.skills
            .map<Widget>((s) => Card(
                  elevation: 7,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(s.title),
                        s.hasWorked ? Icon(Icons.check) : Icon(Icons.close),
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
