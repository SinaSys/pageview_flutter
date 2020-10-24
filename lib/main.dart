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

  PageController _pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
        actions: [
          IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            _pageController.animateToPage(0, duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);

          }),
          IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
            _pageController.animateToPage(2, duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);

          } ),
        ],
      ),
      body:  PageView(
        controller: _pageController,
        children: [
          Container(color: Colors.redAccent),
          Container(color: Colors.green),
          Container(color: Colors.blue),
        ],
      ),
    );
  }
}
