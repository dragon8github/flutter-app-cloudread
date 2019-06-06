import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../utils.dart';

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
            bottom: rem2(0),
            left: 0,
            right: 0,
            height: rem2(272),
            child: Image.asset(
              'images/exfooterbg.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: rem2(80.0),
                right: rem(30.0),
                bottom: rem2(0.0),
                left: rem(30.0)),
            /* 内容区域开始 */
            child: Stack(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    tabButton("基础考级", Colors.white),
                    tabButton("争考考级", Color.fromRGBO(153, 207, 246, 1))
                  ],
                ),
                Positioned(
                  top: rem2(90),
                  left: rem(110),
                  child: Image.asset(
                    'images/love.png',
                    width: rem(110.0),
                    height: rem2(71.0),
                    fit: BoxFit.cover, //图片填充整个父容器
                  ),
                ),
                Positioned(
                  right: rem(0),
                  top: rem2(0),
                  child: Image.asset(
                    'images/msg.png',
                    width: rem(28.0),
                    height: rem2(27.0),
                    fit: BoxFit.cover, //图片填充整个父容器
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: rem2(145.0)),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: rem2(100),
                            decoration: new BoxDecoration(
                              // 背景颜色
                              color: Color.fromRGBO(52, 147, 250, 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(13.0),
                                  topRight: Radius.circular(13.0)),
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
                            padding: EdgeInsets.only(
                                top: rem2(30.0),
                                right: rem(0.0),
                                bottom: rem2(30.0),
                                left: rem(30.0)),
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(13.0),
                                  bottomRight: Radius.circular(13.0)),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                field("images/time.png", "报名时间",
                                    "2018.09.16 —— 2018.09.20"),
                                field("images/remind.png", "考试时间",
                                    "2018.09.26 10:00"),
                                field("images/address.png", "考试场地", "4楼电脑三室"),
                                field("images/rankAhead.png", "报考等级", "2级"),
                                field("images/edit.png", "必选书目", "2本"),
                                field("images/file.png", "自选书目", "共2本"),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: rem2(0.0),
                                      right: rem(0.0),
                                      bottom: rem2(30.0),
                                      left: rem(0.0)),
                                  child: Text(
                                    '已选 1 本',
                                    style: TextStyle(
                                      fontSize: rem(24),
                                      color: Color.fromRGBO(26, 26, 26, 1),
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
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: rem2(30.0), right: rem(40.0), bottom: rem2(0.0), left: rem(0.0)),
                                  child: Center(
                                    child: CupertinoButton(
                                      child: Text(
                                        '确定报名',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      color: Color.fromRGBO(40,137,241, 1),
                                      borderRadius: BorderRadius.all(Radius.circular(24.0)), // 按钮圆角设置
                                      onPressed: () { // onPressed不为null视为可点击
                                        print('You click the button');
                                      },
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget imgBook(String imgPath, String name) {
  return Container(
    // margin: EdgeInsets.all(rem(8.0)),
    margin: EdgeInsets.only(
        top: rem2(0.0), right: rem(20.0), bottom: rem2(0.0), left: rem(0.0)),
    child: Column(
      children: <Widget>[
        Image.asset(
          imgPath,
          width: rem(134.0),
          height: rem2(174.0),
          fit: BoxFit.cover, //图片填充整个父容器
        ),
        Container(
          // margin: EdgeInsets.all(rem(8.0)),
          margin: EdgeInsets.only(
              top: rem2(20.0),
              right: rem(0.0),
              bottom: rem2(0.0),
              left: rem(0.0)),
          child: Text(
            name,
            style: TextStyle(
              fontSize: rem(26),
              color: Color.fromRGBO(68, 68, 68, 1),
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
    margin: EdgeInsets.only(
        top: rem2(0.0), right: rem(0.0), bottom: rem2(30.0), left: rem(0.0)),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Image.asset(
                imgPath,
                width: rem(30.0),
                height: rem2(30.0),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: rem2(0.0),
                    right: rem(0.0),
                    bottom: rem2(0.0),
                    left: rem(10.0)),
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: rem(28),
                    color: Color.fromRGBO(68, 68, 68, 1),
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
          margin: EdgeInsets.only(
              top: rem2(0.0),
              right: rem(0.0),
              bottom: rem2(0.0),
              left: rem(47.0)),
          child: Text(
            value,
            style: TextStyle(
              fontSize: rem(28),
              color: Color.fromRGBO(68, 68, 68, 1),
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
  return Container(
    width: rem(328.0),
    height: rem2(120.0),
    child: FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(23)),
      ),
      onPressed: () {
        if (cb is Function) {
          cb();
        }
      },
      color: _color,
      child: Center(
        child: Text(
          name,
          style: TextStyle(
            fontSize: rem(40),
            color: Color.fromRGBO(49, 129, 215, 1),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
