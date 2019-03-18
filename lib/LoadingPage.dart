import 'package:flutter/material.dart';
import 'dart:async';
import './Utils.dart';

class LoadingPage extends StatefulWidget {
  @override
  createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  @override
  void initState() {
    super.initState();
    new Future.delayed(Duration(seconds: 3), () {
      print('App正在加载...');
      Navigator.of(context).pushReplacementNamed("App");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: rem2(227),
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'images/logo.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: rem2(97),
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'images/ad.png',
                width: rem(226.0),
                height: rem2(60.0),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}