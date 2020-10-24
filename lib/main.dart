import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            children: [
              Container(color: Colors.green,child: Text("Page 1 of PageView")),
              Container(color: Colors.redAccent,child: Text("Page 2 of PageView")),
              Container(color: Colors.blue,child: Text("Page 3 of PageView")),
            ],
          ),
        ),
        Expanded(child:
          Container(
            child: Text("This area is outside of Page view",textAlign: TextAlign.center,),
          ),)
      ],
    );
  }
}
