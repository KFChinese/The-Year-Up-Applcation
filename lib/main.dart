/*
Application: Year Up 
Developed by Larry Chiem
Version 1.0 A



[NOTES]
Warning! 
Code is not optimized yet, Is 3/4th's broken and will be worked on to make sure that the code will be A OK.

What's Working:
App Redirectory To External URL 

*/



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_YUApp/Constants/constants.dart';
import 'package:flutter_YUApp/UI/Widgets/splash_screen.dart';

import 'package:flutter_YUApp/UI/login.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Year Up Alpha',
      theme: ThemeData(primaryColor: Colors.yellowAccent[200]),
      routes: <String, WidgetBuilder>{
        MAIN_UI: (BuildContext context) => LoginPage(),    // WIll use MainUI(), for other Stuff
        splash_screen: (BuildContext context) => AnimatedSplashScreen(), //Startup 


      },
      initialRoute: splash_screen,
    );
  }
}
