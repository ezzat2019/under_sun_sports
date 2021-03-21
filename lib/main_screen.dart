import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final flutterWebviewPlugin = new FlutterWebviewPlugin();
    // TODO: implement build
    return SafeArea(child: Scaffold(
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
    ),);
  }
}