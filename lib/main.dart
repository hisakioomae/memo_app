import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(RootWidget());

class RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListState();
  }
}

class ListState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Test"),),
      body: SampleList(),
    );
  }
}

class SampleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: 100,
      itemBuilder: (context, int index) {
        return SampleCard();
      }
    );
  }
}

class SampleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var n = Random().nextInt(20);
    String longText = '';
    while (n-- > 0) {
      longText += 'Long Text. ';
    }
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            child: Text(
              'short Text'
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(right: 10.0, bottom: 10.0, left: 10.0),
            child: Text(
              longText
            ),
          )
        ],
      )
    );
  }
}
