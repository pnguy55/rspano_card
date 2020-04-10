import 'dart:ui' as prefix0;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        // important to avoid navbar
        body: SafeArea(
//          container can only have a single child

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(width: double.infinity),
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('assets/rhett.jpg'),
              ),
              Image.asset('assets/rhett-logo.jpg', height: 80.0),
              Container(
                  width: 250.0,
                  color: Colors.black,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    child: InkWell(
                      onTap: () =>
                          launch('mailto:https://rhettspanolaw.com/contact/'),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.mail, color: Colors.white),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            'Email Me',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Container(
                width: 250.0,
                color: Colors.black,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                padding: EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () => launch('tel:2253878327'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(margin: EdgeInsets.only(left: 5.0)),
                      Icon(Icons.phone, color: Colors.white),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        '(225) 387-8327',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                      Container(margin: EdgeInsets.only(right: 5.0)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
