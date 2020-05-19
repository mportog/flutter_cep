import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('CORREIOS'),
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {},
          color: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.location_on,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: height / 2.5,
            color: Colors.blue,
          ),
          ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  height: (height - (height / 2.5)),
                  width: width,
                  child: Card(
                    color: Colors.yellow,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
