import 'package:flutter/material.dart';
import 'page.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int _currentIndex = 0;
  final tabs = [
    Center(child: Text("home")),
    Center(child: Text("About me")),
    Center(child: Text("My work")),
    Center(child: Text("Services")),
    Center(child: Text("lets connect")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("test"),
        //elevation: defaultTargetPlatform == TargetPlatform.android?5.0:0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Nitish"),
              accountEmail: new Text("nitish8040@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text("N"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.white,
                )
              ],
            ),
            new ListTile(
              title: new Text("page1"),
              trailing: new Icon(Icons.account_balance_wallet_sharp),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new MyPage("Page one")));
              },
            ),
            new ListTile(
              title: new Text("page2"),
              trailing: new Icon(Icons.account_balance_wallet_sharp),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new MyPage("Page two")));
              },
            ),
            new ListTile(
              title: new Text("page3"),
              trailing: new Icon(Icons.account_balance_wallet_sharp),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        new MyPage("Page three")));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("close"),
              trailing: new Icon(Icons.account_balance_wallet_sharp),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_sharp),
              label: "Home",
              backgroundColor: Colors.deepPurple),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_sharp),
              label: "About me",
              backgroundColor: Colors.deepPurple),
          BottomNavigationBarItem(
              icon: Icon(Icons.slideshow_sharp),
              label: "My Work",
              backgroundColor: Colors.deepPurple),
          BottomNavigationBarItem(
              icon: Icon(Icons.work_sharp),
              label: "Services",
              backgroundColor: Colors.deepPurple),
          BottomNavigationBarItem(
              icon: Icon(Icons.call_sharp),
              label: "Connect",
              backgroundColor: Colors.deepPurple)
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
