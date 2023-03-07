import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TopBar();
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
    child: Row( children:<Widget>[
      Image.asset('images/Nlogo.png',
        fit: BoxFit.contain,
        height: 25,
      )
    ],),
    );
  }
}