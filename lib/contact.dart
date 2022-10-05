import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ucsi/mainmenu.dart';

void main() {
  runApp(const contact());
}

class contact extends StatelessWidget {
  const contact({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact menu',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: "Nunito",
      ),
      home: const MyHomePage(title: 'Dev'),
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
      backgroundColor: Colors.grey,
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
        title: Text("Contact us"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.grey[300],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.cases_outlined, size: 50),
                      Text(
                        '      Name: Abdirisaq Mohamed Adan\n' +
                            '      Student ID: 1001953186',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.grey[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.cases_outlined, size: 50),
                      Text(
                        '      Name: Iftiaj Alom\n' +
                            '      Student ID: 1001956759',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.grey[300],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.cases_outlined, size: 50),
                      Text(
                        '      Name: Tan Wan Yin\n' +
                            '      Student ID: 1001955296',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
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
