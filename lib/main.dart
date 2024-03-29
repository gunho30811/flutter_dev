import 'package:contact_youtube/screen/home_screen.dart';
import 'package:contact_youtube/widget/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    runApp(MyApp());
    }

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bbongflix',
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.black,
            hintColor: Colors.white),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                HomeScreen(),
                Container(child: Center(child: Text('search'),),),
                Container(child: Center(child: Text('save'),),),
                Container(child: Center(child: Text('more'),),),
              ],
            ),
            bottomNavigationBar: Bottom(),
          ),
        ));
  }
}
