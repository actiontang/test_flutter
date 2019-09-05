import 'package:flutter/material.dart';
import './slavePage.dart';
import '../myPageViewer.dart';

class mainPage extends StatefulWidget{
  static String tag='main-page';
  @override
  _mainPageState createState() => new _mainPageState();

}


class _mainPageState extends State<mainPage>{
  String mainProfilePicture = "https://desk-fd.zol-img.com.cn/t_s144x90c5/g5/M00/02/07/ChMkJlbKy5GIKHO3AAXx0E0tcL8AALIsgMfpwoABfHo739.jpg";
  String otherProfilePicture = "https://desk-fd.zol-img.com.cn/t_s144x90c5/g5/M00/01/0D/ChMkJ1uYaZ-IKDkFAAR_I31LhRMAAroYwNnOnQABH87217.jpg";

  void switchUser(){
    String backupString = mainProfilePicture;
    this.setState( () {
      mainProfilePicture = otherProfilePicture;
      otherProfilePicture = backupString;
    }
    );//end this.setState
  }




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(title: new Text('My Drawer APP')),
        drawer: new Drawer(
            child: new ListView(
                children: <Widget>[
                  new UserAccountsDrawerHeader(
                      accountName: new Text('Flutter 開發者'),
                      accountEmail: new Text('action@tang.com'),
                      currentAccountPicture: new GestureDetector(
                        onTap: ()=>print("Click Event"),
                        child: new CircleAvatar( backgroundImage: new NetworkImage(mainProfilePicture),),
                      ),

                      otherAccountsPictures: <Widget>[
                        new GestureDetector(
                            onTap: ()=>switchUser(),
                            child: new CircleAvatar(backgroundImage: new NetworkImage(otherProfilePicture),),
                        )
                      ],//end otherAccountsPictures
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                              fit:BoxFit.fill,
                              image: new NetworkImage("https://desk-fd.zol-img.com.cn/t_s208x130c5/g4/M00/0F/02/Cg-4zFT5Wj-IQxAKABhgu3KD_twAAWK_ANBmYUAGGDT047.jpg")
                          )
                      ),//end decoration
                  ),//new UserAccountsDrawerHeader

                  new ListTile(
                      title: new Text("常用组件1"),
                      trailing: new Icon(Icons.arrow_upward),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new slavePage("常用1")));
                      }
                  ),

                  new ListTile(
                      title: new Text("常用组件2"),
                      trailing: new Icon(Icons.arrow_upward),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new myPageViewer() ));
                      }
                  ),
                  new Divider(),
                  new ListTile(
                      title: new Text('Close'),
                      trailing: new Icon(Icons.cancel),
                      onTap: ()=> Navigator.of(context).pop(),

                  )


                ],//end children
            ),//end ListView
        ),//end drawer();

        body: ListView.separated(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(title: Text("列表项$index"));
            },
            separatorBuilder: (BuildContext context, int index) {
              return Align(
                  alignment: Alignment.centerLeft,
                  child: FlutterLogo(),
                  );
            },
        ),

    );
  }


}