import 'package:flutter/material.dart';

class myPageViewer extends StatelessWidget {
  Widget _buildPage( {int index, Color color} ){

    return Container(
        alignment: AlignmentDirectional.center,
        color: color,
        child: Text(
            '$index',
            style: TextStyle(fontSize: 150.0, color:Colors.white),
            ),
        );

  }


  Widget _buildPageView(){
    return PageView(
        children: <Widget>[
          _buildPage(index:1, color: Colors.green),
          _buildPage(index:2, color: Colors.blue),
          _buildPage(index:3, color: Colors.indigo),
        ],
        );
  }


  @override
  Widget build(BuildContext content){
    return Scaffold(
        appBar: new AppBar(
            title: const Text('PageView'),
            ),
        body: _buildPageView(),
        );
  }

}