import 'package:cvinfo/pages/aboutapp.dart';
import 'package:cvinfo/pages/protect.dart';
import 'package:cvinfo/pages/resource.dart';
import 'package:cvinfo/pages/spread.dart';
import 'package:cvinfo/pages/symptom.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ជំងឺកូរូណា ឬ កូវីដ-19'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Text(
              'លេខទូរស័ព្ទសំខាន់: 115',
              style: new TextStyle(fontSize: 30, color: Colors.red),
            ),
            alignment: Alignment(0, 0),
            margin: EdgeInsets.all(9.0),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(77, 163, 248, 0.69),
                  blurRadius: 50.0,
                  spreadRadius: 0.000,
                  offset: Offset(
                    -2.0,
                    5.0,
                  ),
                )
              ],
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4 - 50,
          ),
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Symptom()));
                },
                child: card(context, 'អាការរោគ', 'images/symptom.png'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Protect()));
                },
                child: card(context, 'វិធីការពារ', 'images/protect.png'),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Spread()));
                },
                child: card(context, 'ការរាតត្បាត', 'images/spread.png'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Resource()));
                },
                child: card(context, 'ធនធានសំខាន់ៗ', 'images/resource.png'),
              ),
            ],
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
              child: Container(
                child: Text(
                  'អំពី Application',
                ),
                alignment: Alignment(0, 0),
                margin: EdgeInsets.all(9.0),
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(90, 90, 90, 100),
                      blurRadius: 7.0,
                      spreadRadius: 0.005,
                      offset: Offset(
                        -2.0,
                        5.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget card(context, titleTopic, imageIcon) {
    return Container(
      child: Stack(
        children: <Widget>[
          Image(
            image: new AssetImage(imageIcon),
            width: 70,
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 75),
            child: Text(
              titleTopic,
              textAlign: TextAlign.center,
              style: new TextStyle(fontSize: 17),
            ),
          )
        ],
      ),
      alignment: Alignment(0, 0),
      margin: EdgeInsets.all(9.0),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(90, 90, 90, 100),
            blurRadius: 3.0,
            spreadRadius: 0.002,
            offset: Offset(
              -2.0,
              5.0,
            ),
          )
        ],
      ),
      width: MediaQuery.of(context).size.width / 2 - 18,
      height: MediaQuery.of(context).size.height / 4 - 18,
    );
  }
}
