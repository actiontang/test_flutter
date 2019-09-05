import 'package:flutter/material.dart';
import './slidemenu/mainPage.dart';

class loginPage extends StatefulWidget{
  static String tag='log-page';
  @override
  _loginPageState createState()=> new _loginPageState();
}

class _loginPageState extends State<loginPage>{
  @override
  Widget build(BuildContext context){
    //logo
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 48.0,
          child: Image.asset("assets/logo.png"),
      ),
    );

    //input UserName, Email
    final email=TextFormField(
        keyboardType: TextInputType.emailAddress ,
        autofocus: false,
        initialValue: 'action@qq.com',
        decoration: InputDecoration(
            hintText: 'Your Email',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0)
            )
        ),
    );

    //input Password
    final password=TextFormField(
        autofocus: false,
        obscureText: true,
        initialValue: 'xxxx',
        decoration: InputDecoration(
            hintText: 'Password',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0)
            )
        ),
    );

    //login button
    final loginButton= Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          borderRadius: BorderRadius.circular(30.0) ,
          shadowColor: Colors.lightBlueAccent.shade100,
          elevation: 5.0,
          color: Colors.green,

          child: MaterialButton(
              minWidth: 200.0,
              height: 42.0,
              onPressed: (){
                Navigator.of(context).pushNamed(mainPage.tag);
              },
              child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 20.0) ,),
          ),
        ),
    );

    //
    final forgotLabel = FlatButton(
        child: Text('forgot?', style:TextStyle(color: Colors.black54, fontSize:18.0  ) ),
        onPressed: (){},
    );

    //
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo, SizedBox(height: 48.0,),
              email,SizedBox(height: 8.0,),
              password, SizedBox(height: 24.0,),
              loginButton,forgotLabel

            ],
          ),//child
      ),//body
    );//return

  }//Widget build
}