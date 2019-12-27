import 'package:flutter/material.dart';

import './pages/home.dart';

void main() => runApp(StartApp());

class StartApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Seekr",
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
    );
  }

} 