import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ucsi/mainmenu.dart';

void main() {
  runApp(const fav());
}

// ignore: camel_case_types
class fav extends StatelessWidget {
  const fav({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact menu',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: "Nunito",
      ),
      home: const MyHomePage(title: 'Fav'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_left),
          iconSize: 30.0,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => mainmenu()),
            );
          },
        ),
        centerTitle: true,
        title: Text("Favorite"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 50,
                        color: Colors.red,
                      ),
                      Text(
                        '\n      Hatton\n',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(width: 100),
                      Image.asset(
                        "assets/images/pic1.png",
                        fit: BoxFit.cover,
                        width: 90,
                        height: 90,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(width: 60),
            Container(
              padding: EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 50,
                        color: Colors.red,
                      ),
                      Text(
                        '\n      The Quad\n',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(width: 80),
                      Image.asset(
                        "assets/images/pic1.png",
                        fit: BoxFit.cover,
                        width: 90,
                        height: 90,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 50,
                        color: Colors.red,
                      ),
                      Text(
                        '\n      Aromas Coffee\n              ',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(width: 40),
                      Image.asset(
                        "assets/images/pic1.png",
                        fit: BoxFit.cover,
                        width: 90,
                        height: 90,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
