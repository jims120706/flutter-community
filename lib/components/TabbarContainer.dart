import 'package:flutter/material.dart';

class TabbarContainer extends StatefulWidget {
  TabbarContainer({Key key, Widget this.body}) : super(key: key);

  Widget body;

  @override
  _TabbarContainerState createState() => _TabbarContainerState();
}

class _TabbarContainerState extends State<TabbarContainer> {
  Function router;
  String routerName = 'home';

  void _onAdd() {}
  void _onBottomBarTap(type) {
    setState(() {
      routerName = type;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.body,
      bottomNavigationBar: BottomAppBar(
          child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.home),
            color: routerName == 'home' ? Colors.blue : Colors.grey,
            onPressed: () {
              _onBottomBarTap('home');
            },
          ),
          SizedBox(), //中间位置空出
          IconButton(
            icon: Icon(Icons.business),
            color: routerName == 'myCenter' ? Colors.blue : Colors.grey,
            onPressed: () {
              _onBottomBarTap('myCenter');
            },
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: SizedBox(
          width: 40,
          height: 40,
          child: FloatingActionButton(
              //悬浮按钮
              child: Icon(Icons.add),
              onPressed: _onAdd),
        ),
      ),
    );
  }
}
