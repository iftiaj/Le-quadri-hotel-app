import 'package:flutter/material.dart';
import 'package:ucsi/main.dart';
import 'package:ucsi/contact.dart';
import 'hmenu.dart';
import 'foodm.dart';

class mainmenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.orangeAccent,
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/lqonline.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 50, right: 15),
                    child: FlatButton(
                        color: Colors.white,
                        child: Text(
                          'Room',
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => hmenu()),
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50, left: 15),
                    child: FlatButton(
                      color: Colors.black,
                      child: Text(
                        'Food',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => foodm()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
