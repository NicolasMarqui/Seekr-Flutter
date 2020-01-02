import 'package:flutter/material.dart';

import '../styles/styles.dart';

class AddProfileInfo extends StatefulWidget {
  const AddProfileInfo({Key key}) : super(key: key);

  @override
  _AddProfileInfoState createState() => _AddProfileInfoState();
}

class _AddProfileInfoState extends State<AddProfileInfo> {
  bool isCheckedSkill = false;
  bool isCheckedExperience = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 7,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Skills',
                        style: AppStyles.bold(),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8.0),
                            filled: true,
                            hintText: "e.g Web Developer",
                            fillColor: Colors.white),
                      ),
                      Row(
                        children: <Widget>[
                          Text('I\' ve worked with this'),
                          Checkbox(
                            onChanged: (e) {
                              setState(() {
                                isCheckedSkill = !isCheckedSkill;
                              });
                            },
                            value: isCheckedSkill,
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Text('Save'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 7,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Experience',
                        style: AppStyles.bold(),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8.0),
                            filled: true,
                            hintText: "Title of your function",
                            fillColor: Colors.white),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8.0),
                            filled: true,
                            hintText: "Where at",
                            fillColor: Colors.white),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8.0),
                            filled: true,
                            hintText: "For how long",
                            fillColor: Colors.white),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8.0),
                            filled: true,
                            hintText: "Description",
                            fillColor: Colors.white),
                      ),
                      Row(
                        children: <Widget>[
                          Text('I\'m still working at it'),
                          Checkbox(
                            onChanged: (e) {
                              setState(() {
                                isCheckedExperience = !isCheckedExperience;
                              });
                            },
                            value: isCheckedExperience,
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Text('Save'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  RaisedButton(
                    onPressed: (){},
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text('Upload your Curriculum'),
                  ),

                  Container(
                    width: double.infinity,
                    child: Text('PDF/DOCx only', style: AppStyles.linkDescSmall(), textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
