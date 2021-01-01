import 'package:drawer/page1.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
void main()=>runApp(new MyApp());
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return new MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: new ThemeData(
       primarySwatch: Colors.deepPurple
     ),
     home: new Homepage(),
   );
  }
}
class Homepage extends StatelessWidget {
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
                    builder: (BuildContext context )=> new Page1("Page one")));
              },
            ),
            new ListTile(
              title: new Text("page2"),
              trailing: new Icon(Icons.account_balance_wallet_sharp),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context )=> new Page1("Page two")));
              },
            ),
            new ListTile(
              title: new Text("page3"),
              trailing: new Icon(Icons.account_balance_wallet_sharp),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context )=> new Page1("Page three")));
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
