import 'package:flutter/material.dart';
import './My.dart';
import './Examination.dart';
import './Utils.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        brightness: Brightness.light, //应用程序整体主题的亮度
      ),
      routes: <String, WidgetBuilder>{
        'My': (BuildContext context) => new My(),
        'Examination': (BuildContext context) => new Examination(),
      },
      home: new Entry(),
    ),
  );
}

class Entry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Read(),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: rem2(208),
            decoration: new BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage("images/index_bottom.png"),
                  fit: BoxFit.contain
              ),
              color: Color.fromRGBO(250, 250, 250, 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                footerItem("images/index_logo.png", "阅读"),
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
          padding: EdgeInsets.only(top: rem2(5.0), bottom: rem2(20.0)),
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


// 头部
Widget header = Container(
  height: rem2(424),
  width: rem(750),
  child: Stack(
    children: <Widget>[
      // banner 广告位
      Image.asset(
        'images/banner1.png',
      ),
      Container(
        margin: EdgeInsets.only(top: rem2(30), right: rem(30), bottom: 0.0, left: rem(30)),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Container(
                    height: rem(76.0),
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
                    height: rem(50.0),
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
              height: rem(76.0),
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


class Read extends StatelessWidget {
  // 标题栏
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

  // 书本 Book item
  Container buildBook(String imgPath, String name, [bool mustBe = true]) {
    return Container(
      width: 77.0,
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                imgPath,
                width: rem(154),
                height: rem(200),
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

  @override
  Widget build(BuildContext context) {

    return Container(
      child: ListView(
          children: <Widget>[
            header,
            Container(
              padding: EdgeInsets.only(top: rem2(18), left: rem(30), right: rem(30)),
              child: buildMoreTitle("名师阅读"),
            ),
            Container(
              margin: EdgeInsets.only(top: rem2(33), right: rem(30), left: rem(30)),
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
              padding:  EdgeInsets.only(top: rem2(30), left: rem(30), right: rem(30)),
              child: buildMoreTitle("待考节目"),
            ),
            Container(
              padding:  EdgeInsets.only(top: rem2(30), right: rem(30), left: rem(30), bottom: rem2(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  buildBook("images/book1.png", "西游记"),
                  buildBook("images/book2.png", "农夫与蛇"),
                  buildBook("images/book3.png", "海中的女儿", false),
                  buildBook("images/book4.png", "阿凡提买树荫", false)
                ],
              ),
            ),
          ],
        ),
    );
  }
}
