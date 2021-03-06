import 'package:flutter/material.dart';

import 'package:flutter_app/utils.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // 身体
        body: Body(),
        // 底部
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: rem2(208),
            decoration: new BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage("images/index_bottom.png"),
                  fit: BoxFit.fill
              ),
              color: Colors.transparent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                footerItem("images/index_logo.png", "阅读", () {
                  Navigator.pushNamed(context, "App");
                }),
                footerItem("images/examination_logo.png", "考试", () {
                  Navigator.pushNamed(context, "Examination");
                }),
                footerItem("images/my_logo.png", "我的", () {
                  Navigator.pushNamed(context, "My");
                }),
              ],
            ),
          ),
        )
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        // padding: EdgeInsets.all(rem(8.0)),
        padding: EdgeInsets.only(top: rem(0.0), right: rem(0.0), bottom: rem(0.0), left: rem(0.0)),
        children: <Widget>[
          header,
          Container(
            padding: EdgeInsets.only(top: rem(0), left: rem(30), right: rem(30)),
            child: buildMoreTitle("名师阅读"),
          ),
          Container(
            margin: EdgeInsets.only(top: rem(33), right: rem(30), left: rem(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'images/read1.png',
                  width: rem(330.0),
                  height: rem2(200.0),
                ),
                Image.asset(
                  'images/read2.png',
                  width: rem(330.0),
                  height: rem2(200.0),
                ),
              ],
            ),
          ),
          Container(
            padding:  EdgeInsets.only(top: rem(30), left: rem(30), right: rem(30)),
            child: buildMoreTitle("待考节目"),
          ),
          Container(
            padding:  EdgeInsets.only(top: rem(30), right: rem(30), left: rem(30), bottom: rem(50)),
            child: Wrap(
              direction: Axis.horizontal, // 默认是 horizontal（水平）
              spacing: rem(24.0), // Chip 之间间隙大小
              runSpacing: rem(50.0), // 行之间的间隙大小
              children: <Widget>[
                bookItem("images/book1.png", "西游记"),
                bookItem("images/book2.png", "农夫与蛇"),
                bookItem("images/book3.png", "海中的女儿", false),
                bookItem("images/book4.png", "阿凡提买树荫", false),

                bookItem("images/book-1.png", "爱丽丝漫游", false),
                bookItem("images/book-2.png", "鲁滨孙漂流"),
                bookItem("images/book-3.png", "绿野仙踪", false),
                bookItem("images/robber.png", "豆蔻镇的居民和强盗"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 头部
Widget header = Container(
  height: rem2(424),
  child: Stack(
    children: <Widget>[
      // banner 广告位
      Container(
        width: rem(750),
        child: Image.asset(
          'images/banner1.png',
          fit: BoxFit.fill,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: rem(40), right: rem(30), bottom: 0.0, left: rem(30)),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Container(
                    height: rem2(76.0),
                    width: rem(76.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: new BoxDecoration(
                      // 背景颜色
                        color: Color.fromRGBO(0, 0, 0, .2),
                        // 圆角
                        borderRadius: BorderRadius.all(Radius.circular(16.0))
                    ),
                    child: Image.asset(
                      "images/head.png",
                    ),
                  ),
                  Container(
                    width: rem(92.0),
                    height: rem2(50.0),
                    decoration: new BoxDecoration(
                      // 背景颜色
                        color: Color.fromRGBO(0, 0, 0, .2),
                        // 圆角
                        borderRadius: BorderRadius.all(Radius.circular(13.0))
                    ),
                    margin: const EdgeInsets.only(top: 0.0, right: 0.0, bottom: 0.0, left: 7.0),
                    child: Center(
                      child: Text(
                        "Lv.11",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: rem(26.0),
                        ),
                        textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: rem2(76.0),
              width: rem(76.0),
              padding: const EdgeInsets.all(8.0),
              decoration: new BoxDecoration(
                // 背景颜色
                color: Color.fromRGBO(0,0,0, .2),
                // 圆角
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              child: Image.asset(
                  'images/search.png'
              ),
            )
          ],
        ),
      ),
    ],
  ),
);

Widget footerItem(String imgPath, String title, [Function cb]) {
  return GestureDetector(
    onTap: (){
      if (cb is Function) {
        cb();
      }
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Image.asset(
          imgPath,
          width: rem(96.0),
          height: rem2(96.0),
        ),
        Container(
          padding: EdgeInsets.only(top: rem(5.0), bottom: rem(20.0)),
          child: Text(
            title,
            style: TextStyle(
                fontSize: rem(26.0),
                color: Color.fromRGBO(78,173,236, 1)
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

Row buildMoreTitle(String title) {
  return Row(
    children: <Widget>[
      Expanded(
        child: Row(
          children: <Widget>[
            Container(
              color: Colors.lightBlue,
              width: 3.0,
              height: 15.0,
            ),
            Container(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                  ),
                  textAlign: TextAlign.center,
                )
            )
          ],
        ),
      ),
      Row(
        children: <Widget>[
          Image.asset(
            'images/bee.png',
            width: rem(48),
            height: rem2(43),
          ),
          Container(
            padding: const EdgeInsets.only(top: 0.0, right: 5.0, bottom: 0.0, left: 5.0),
            child: Text(
              '更多',
              style: TextStyle(
                  fontSize: 13.0,
                  color: Color.fromRGBO(165,165,181,1)
              ),
            ),
          ),
          Image.asset(
            'images/arrow.png',
            width: 6.0,
            height: 12.0,
          ),
        ],
      )
    ],
  );
}


// 书本 bookItem
Container bookItem(String imgPath, String name, [bool mustBe = true]) {
  return Container(
    width: rem(154),
    child: Stack(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              imgPath,
              height: rem2(200),
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.only(top: 5.0, right: 0.0, bottom: 0.0, left: 0.0),
              child: Text(
                name,
                style: TextStyle(
                    fontSize: 15.0
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
        Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 30.0,
              height: 16.0,
              decoration: new BoxDecoration(
                  color: mustBe ? Color.fromRGBO(255,122,69, 1) : Color.fromRGBO(0,183,147, 1),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0))
              ),
              child: Text(
                mustBe ? "必选" : "可选",
                style: TextStyle(
                    fontSize: 11,
                    color: Colors.white
                ),
                textAlign: TextAlign.center,
              ),
            )
        )
      ],
    ),
  );
}
