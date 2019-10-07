import 'package:flutter/material.dart';

void main() => runApp(MyApp());

TextStyle blackStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black);
TextStyle redStyle =
    TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.red);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Text'),
          ),
          body: Column(
            children: <Widget>[
              Text.rich(
                TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: '文本是试图系统中常见的控件，他用来显示一段特定的字符串，类似dsadsadsa',
                      style: blackStyle),
                  TextSpan(text: 'Adnroid', style: redStyle),
                  TextSpan(text: '中的', style: blackStyle),
                  TextSpan(text: 'TextVidw', style: redStyle)
                ]),
                textAlign: TextAlign.center,
              ),
              Image.asset('images/logo.png'),
              Text('dat1'),
              FloatingActionButton(
                  onPressed: () => print('FloatingActionButton parsed'),
                  child: Text('btn')),
              RaisedButton(
                  onPressed: () => print('RaisedButton parsed'),
                  child: Text('btn')),
              FlatButton(
                  onPressed: () => print('FlatButton parsed'),
                  child: Text('btn')),
              FlatButton(
                  onPressed: () => print('定制的FlatButton'),
                  color: Colors.yellow,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  colorBrightness: Brightness.light,
                  child: Row(children: <Widget>[Icon(Icons.add), Text('add')]))
            ],
          )),
    );
  }
}
