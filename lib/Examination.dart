import 'package:flutter/material.dart';
import './Utils.dart';

class Examination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'images/exbg.png',
              fit: BoxFit.cover, //图片填充整个父容器
            ),
          ),
          Positioned(
            bottom: rem(0),
            height: rem(272),
            width: rem(750),
            child: Image.asset(
              'images/exfooterbg.png',
              fit: BoxFit.contain,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: rem(80.0), right: rem(30.0), bottom: rem(0.0), left: rem(30.0)),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    tabButton("基础考级", Colors.white),
                    tabButton("争考考级", Color.fromRGBO(153,207,246, 1))
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: rem(25.0), right: rem(0.0), bottom: rem(0.0), left: rem(0.0)),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: rem(100),
                        decoration: new BoxDecoration(
                          // 背景颜色
                          color: Color.fromRGBO(52,147,250, 1),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(13.0), topRight: Radius.circular(13.0)),
                        ),
                        child: Center(
                          child: Text(
                            '2018年-2019年下学期阅读等级考试',
                            style: TextStyle(
                              fontSize: rem(32),
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Container(
                        height: rem(845),
                        padding: EdgeInsets.only(top: rem(40.0), right: rem(0.0), bottom: rem(0.0), left: rem(40.0)),
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(13.0), bottomRight: Radius.circular(13.0)),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            field("images/time.png", "报名时间", "2018.09.16 —— 2018.09.20"),
                            field("images/remind.png", "考试时间", "2018.09.26 10:00"),
                            field("images/address.png", "考试场地", "4楼电脑三室"),
                            field("images/rankAhead.png", "报考等级", "2级"),
                            field("images/edit.png", "必选书目", "2本"),
                            field("images/file.png", "自选书目", "共2本"),
                            Container(
                              margin: EdgeInsets.only(top: rem(0.0), right: rem(0.0), bottom: rem(30.0), left: rem(40.0)),
                              child: Text(
                                '已选 1 本',
                                style: TextStyle(
                                  fontSize: rem(24),
                                  color: Color.fromRGBO(26,26,26, 1),
                                ),
                              ),
                            ),
                            Scrollbar(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal, // 默认是vertical
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    imgBook("images/book-1.png", "爱丽丝漫游"),
                                    imgBook("images/book-2.png", "鲁滨孙漂流"),
                                    imgBook("images/book-3.png", "绿野仙踪"),
                                    imgBook("images/book1.png", "西游记"),
                                    imgBook("images/book2.png", "农夫与蛇"),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget imgBook(String imgPath, String name) {
  return Container(
    // margin: EdgeInsets.all(rem(8.0)),
    margin: EdgeInsets.only(top: rem(0.0), right: rem(30.0), bottom: rem(0.0), left: rem(0.0)),
    child: Column(
      children: <Widget>[
        Image.asset(
          imgPath,
          width: rem(134.0),
          height: rem(174.0),
          fit: BoxFit.cover, //图片填充整个父容器
        ),
        Container(
          // margin: EdgeInsets.all(rem(8.0)),
          margin: EdgeInsets.only(top: rem(20.0), right: rem(0.0), bottom: rem(0.0), left: rem(0.0)),
          child: Text(
            name,
            style: TextStyle(
              fontSize: rem(26),
              color: Color.fromRGBO(68,68,68, 1),
            ),
            textAlign: TextAlign.center,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    ),
  );
}

Widget field(String imgPath, String label, String value) {
  return Container(
    margin: EdgeInsets.only(top: rem(0.0), right: rem(0.0), bottom: rem(40.0), left: rem(0.0)),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Image.asset(
                imgPath,
                width: rem(30.0),
                height: rem(30.0),
              ),
              Container(
                margin: EdgeInsets.only(top: rem(0.0), right: rem(0.0), bottom: rem(0.0), left: rem(10.0)),
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: rem(28),
                    color: Color.fromRGBO(68,68,68, 1),
                  ),
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: rem(0.0), right: rem(0.0), bottom: rem(0.0), left: rem(47.0)),
          child: Text(
            value,
            style: TextStyle(
              fontSize: rem(28),
              color: Color.fromRGBO(68,68,68, 1),
            ),
            textAlign: TextAlign.center,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    ),
  );
}

Widget tabButton(String name, Color _color, [Function cb]) {
  return Material(
      child: Ink(
        color: _color,
        width: rem(328.0),
        height: rem(120.0),
        child: InkWell(
            highlightColor: Color.fromRGBO(250, 250, 250, 1),
            splashColor:  Color.fromRGBO(250, 250, 250, 1),
            onTap: () {
              if (cb is Function) {
                cb();
              }
            },
            child: Container(
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(23.0)),
              ),
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: rem(40),
                    color: Color.fromRGBO(49,129,215, 1),
                  ),
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
        ),
      )
  );
}