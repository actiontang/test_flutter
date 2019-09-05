import 'package:flutter/material.dart';
import 'myPageViewer.dart';
import './slidemenu/mainPage.dart';

import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes=<String, WidgetBuilder>{
    loginPage.tag:(content) =>loginPage(),
    mainPage.tag:(content)=>mainPage(),
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 001',
      theme: ThemeData(
        // Hot-fix Branch add No.1
        // This is the theme of your application.
        // 這是我修改的第二次
        // 這是我修改的第五次
        // Master 這是我修改的第五次
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Action Flutter Demo Home Page'),
      //home:new myPageViewer(),
      //home:new mainPage(),
      home: loginPage(),
      routes: routes,
    );
  }
}



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print ('init state');
  }


  void _incrementCounter() {
    setState(() {
      _counter+=2;
    });
  }

  @override
  Widget build(BuildContext context) {
    print ('init state');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[

          new IconButton(
              icon:new Icon(
                Icons.navigate_next,
                color: Colors.white,
              ),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>myPageViewer(),
                    )
                );
              },
          )

        ],//action[]
      ),

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
