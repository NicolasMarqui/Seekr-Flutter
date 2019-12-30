import 'package:flutter/material.dart';

import '../styles/styles.dart';

class JobInfo extends StatelessWidget {
  final job;

  const JobInfo({Key key, this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.favorite_border, size: 30,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 150,
                child: Hero(
                  tag: 'huh',
                  child: Image.asset('assets/images/avatar.jpg'),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 3),
                      child: Text(
                        job.title,
                        style: AppStyles.title_1(),
                      ),
                    ),
                    Text(
                      job.company,
                      style: AppStyles.linkDescSmall(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Text(
                        '\$19/hr',
                        style: AppStyles.bold(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como.',
                  style: AppStyles.desc(),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(Icons.access_time, size: 30,),
                    Icon(Icons.access_time, size: 30,),
                    Icon(Icons.access_time, size: 30,),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 30,
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('I’m Interessed'),
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
