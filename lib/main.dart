import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(

          children: [

            if(Platform.isIOS)
            Row(
              children: [
              IconButton(icon: Icon(Icons.arrow_back,size: 20,), onPressed: () {
                flutterWebviewPlugin.goBack();
              },)
            ],),


            Expanded(
              child: WebviewScaffold(
                url: "https://www.undersunsports.com/",

                appCacheEnabled: true,
                clearCache: false,
                clearCookies: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
