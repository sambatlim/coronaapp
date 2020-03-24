import 'package:flutter/material.dart';
import '../data/symptomdata.dart';

class Symptom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('រោគសញ្ញា'),
      ),
      body: new SafeArea(
        child: _listview(),
      ),
    );
  }

  Widget _listview() {
    return ListView.builder(
        itemCount: symptomDatas.length,
        itemBuilder: (BuildContext context, index) {
          var barcolor;
          if (index == 0) {
            barcolor = Colors.red;
          } else if (index == 1) {
            barcolor = Colors.orange;
          } else if (index == 2) {
            barcolor = Colors.blue;
          } else if (index == 3) {
            barcolor = Colors.blue;
          } else {
            barcolor = Colors.red;
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: new BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(90, 90, 90, 50),
                    blurRadius: 10.0,
                    spreadRadius: 0.001,
                    offset: Offset(
                      -2.0,
                      5.0,
                    ),
                  )
                ],
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(9),
                    child: Text(
                      '${symptomDatas[index].title}',
                      style: new TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    decoration: new BoxDecoration(color: barcolor),
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    padding: EdgeInsets.all(9),
                    child: Text(
                      '${symptomDatas[index].description}',
                      style: new TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
