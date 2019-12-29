import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/category_page.dart';
import 'package:flutter_shop/pages/home_page.dart';
import 'package:flutter_shop/pages/member_page.dart';
import 'package:flutter_shop/pages/shop_page.dart';
class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() {
    return _IndexPageState();
  }
}

class _IndexPageState extends State<IndexPage> {
  int index = 0;
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text("首页")
    ),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.search),
        title: Text("分类")
    ),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.shopping_cart),
        title: Text("购物车")
    ),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.profile_circled),
        title: Text("会员中心")
    ),
  ];

  final tabBodies = [
    HomePage(),
    CategoryPage(),
    ShopPage(),
    MemberPage()
  ];
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
    // TODO: implement build
    return Scaffold(
      
      body: this.tabBodies[this.index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.index,
        items: bottomTabs,
        type: BottomNavigationBarType.fixed,
        onTap: (int index){
          setState(() {
            this.index = index;
          });
        },
      ),

    );
  }
}
