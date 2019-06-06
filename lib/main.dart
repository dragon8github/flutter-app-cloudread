import 'package:flutter/material.dart';

import 'package:flutter_app/views/LoadingPage.dart';
import 'package:flutter_app/App.dart';
import 'package:flutter_app/views/My.dart';
import 'package:flutter_app/views/Examination.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
      ),
      routes: <String, WidgetBuilder>{
        'App': (BuildContext context) => new App(),
        'My': (BuildContext context) => new My(),
        'Examination': (BuildContext context) => new Examination(),
      },
      home: new LoadingPage(),
//      home: new Examination(),
    ),
  );
}
