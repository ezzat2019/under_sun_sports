import 'dart:io';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:under_sun_sports/main_screen.dart';

import 'animati_splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();

  @override
  Widget build(BuildContext context) {

    return  Material(

        child: Stack(
          children: [
            Scaffold(
            backgroundColor: Colors.white,
            body:  AnimatedSplashScreen(
              splashIconSize: 200.0,
              splash: 'assets/icon/under_sun_gray_without_ball.png',
              nextScreen: MainScreen(),
              splashTransition: SplashTransition.rotationTransition,

            ),
          ),
        AnimationScreen(
            color: Colors.black
        )

          ],



      ),
    );
  }
}
