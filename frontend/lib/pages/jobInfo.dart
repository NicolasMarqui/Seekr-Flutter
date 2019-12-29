import 'package:flutter/material.dart';

class JobInfo extends StatelessWidget {
  final job;

  const JobInfo({Key key, this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          actions: <Widget>[
            Icon(Icons.favorite),
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.blue,
              child: Hero(
                tag: 'huh',
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(job.title),
                  Text(job.company),
                  Text('\$19/hr'),
                ],
              ),
            ),
            Container(
              child: Text(
                  'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como.'),
            ),
          ],
        ),
      ),
    );
  }
}
