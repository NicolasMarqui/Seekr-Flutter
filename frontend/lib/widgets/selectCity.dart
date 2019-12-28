import 'package:flutter/material.dart';

import '../pages/chooseCity.dart';
import '../models/cities.dart';
import '../styles/styles.dart';

class SelectCity extends StatelessWidget {
  const SelectCity({Key key}) : super(key: key);

  final String mainText = "Find jobs in your";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          mainText,
                          style: AppStyles.title_1(),
                        ),
                        Text(
                          "City",
                          style: AppStyles.bold(),
                          textAlign: TextAlign.start,
                        )
                      ],
                    )),
                Flexible(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChooseCity()));
                    },
                    child: Text(
                      "See all",
                      style: AppStyles.linkText(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView.builder(
                itemCount: cities.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          print('Clicked');
                        },
                        child: Container(
                          width: 145,
                          height: double.infinity,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Image.asset(
                                  cities[index].pathName,
                                  fit: BoxFit.cover,
                                  height: double.infinity,
                                  width: double.infinity,
                                ),
                                Container(
                                  color: Colors.black45,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    cities[index].name,
                                    style: AppStyles.boldWhite(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
