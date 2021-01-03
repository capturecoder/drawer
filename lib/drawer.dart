import 'package:flutter/material.dart';
import 'page.dart';
class MyDrawer extends StatelessWidget {
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
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context )=> new MyPage("Page one")));
              },
            ),
            new ListTile(
              title: new Text("page2"),
              trailing: new Icon(Icons.account_balance_wallet_sharp),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context )=> new MyPage("Page two")));
              },
            ),
            new ListTile(
              title: new Text("page3"),
              trailing: new Icon(Icons.account_balance_wallet_sharp),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context )=> new MyPage("Page three")));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("close"),
              trailing: new Icon(Icons.account_balance_wallet_sharp),
              onTap: ()=> Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("homepage"),
        ),
      ),
    );
  }
}
