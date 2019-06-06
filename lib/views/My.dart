import 'package:flutter/material.dart';
import '../utils.dart';

class My extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: Image.asset(
                  'images/mytop.png',
                  height: rem2(577),
                  width: rem(750),
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: rem2(134),
                left: 0,
                right: 0,
                child: userInfo,
              ),
              Positioned(
                bottom: rem2(50),
                left: 0,
                right: 0,
                child: userLevel,
              ),
            ],
          ),
          Container(
            // margin: EdgeInsets.all(rem(8.0)),
            margin: EdgeInsets.only(top: rem2(10.0), right: rem(0.0), bottom: rem2(0.0), left: rem(0.0)),
            child: Column(
              children: <Widget>[
                myItem("images/bachelorCap.png", "我的成绩"),
                myItem("images/footprint.png", "阅读足迹"),
                myItem("images/capabilityTrajectory.png", "能力轨迹"),
                myItem("images/myCollection.png", "我的收藏"),
                myItem("images/setUp.png", "设置"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget myItem(String imgPath, String title) {
  return Container(
    margin: EdgeInsets.only(top: rem2(0.0), right: rem(50.0), bottom: rem2(80.0), left: rem(50.0)),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                imgPath,
                height: rem2(33),
                width: rem(43),
              ),
              Container(
                // margin: EdgeInsets.all(rem(8.0)),
                margin: EdgeInsets.only(top: rem2(0.0), right: rem(0.0), bottom: rem2(0.0), left: rem(11.0)),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: rem(36), color: Color.fromRGBO(80, 80, 80, 1)),
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
        Image.asset(
          'images/more.png',
          height: rem2(36),
          width: rem(20),
        ),
      ],
    ),
  );
}

Widget userLevel = Container(
    margin:
    EdgeInsets.only(top: 0.0, right: rem(70), bottom: 0.0, left: rem(70)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: rem2(40),
          width: rem(115),
          decoration: new BoxDecoration(
            // 背景颜色
            color: Color.fromRGBO(141, 116, 203, 1),
            // 圆角
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: Text(
            'LV.1',
            style: TextStyle(fontSize: rem(36), color: Colors.white),
            textAlign: TextAlign.center,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Row(
          children: <Widget>[
            Text(
              '0',
              style: TextStyle(
                fontSize: rem(36),
                color: Color.fromRGBO(141, 116, 203, 1),
              ),
              textAlign: TextAlign.center,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              '/100',
              style: TextStyle(
                fontSize: rem(36),
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ],
    ));

Widget userInfo = Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Image.asset(
      'images/myhead.png',
      height: rem2(140),
      width: rem(140),
    ),
    Container(
      margin: EdgeInsets.only(
          top: rem2(10.0), right: rem(0.0), bottom: rem2(10.0), left: rem(0.0)),
      child: Text(
        '许晓晴',
        style: TextStyle(
            fontSize: rem(40),
            color: Color.fromRGBO(71, 58, 102, 1),
            fontWeight: FontWeight.bold),
      ),
    ),
    Text(
      '东莞市莞城中心小学',
      style: TextStyle(
          fontSize: rem(30),
          color: Color.fromRGBO(71, 58, 102, 1),
          fontWeight: FontWeight.bold),
    )
  ],
);
