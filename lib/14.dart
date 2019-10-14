import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(primaryColor: Colors.lightBlue[800]),
        home: Scaffold(
            appBar: AppBar(
              title: Text('container'),
            ),
            body:
                // Container(
                //   child: Text('Container(容器)在UI框架中是一个很常见的概念'),
                //   padding: EdgeInsets.all(25.0),
                //   margin: EdgeInsets.all(44.0),
                //   width: 200,
                //   height: 400,
                //   alignment: Alignment.center,
                //   decoration: BoxDecoration(
                //     color: Colors.blue,
                //     borderRadius: BorderRadius.circular(10.0)
                //   ),
                // ),
                // Padding(
                //   child: Text('Padding'),
                //   padding: EdgeInsets.all(100.0),
                // )
                // Center(
                //   widthFactor: 100,
                //   child: Text('Center'),
                // )
                Row(
              children: <Widget>[
                Container(
                  color: Colors.red,
                  width: 200,
                  height: 100,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[Text('name'), Text('爱好')],
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            )
            // Stack(
            //   children: <Widget>[
            //     Container(color: Colors.blue, width: 300, height: 300,),
            //     Positioned(
            //       top: 10,
            //       left: 10,
            //       child: Container(color: Colors.red, width: 50, height: 50,),
            //     ),
            //     Positioned(
            //       top: 70,
            //       left: 10,
            //       child: Text('Positions'),
            //     )
            //   ],
            // )
            ),
      );
}
