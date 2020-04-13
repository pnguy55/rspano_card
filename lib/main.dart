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
              Divider(
                color: Colors.black,
                height: 25.0,
                thickness: 2.0,
                indent: 75,
                endIndent: 75,
              ),
              Card(
                color: Colors.black,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () => launch('https://rhettspanolaw.com/contact/'),
                    child: ListTile(
                      leading: Icon(Icons.email, color: Colors.white),
                      title: Text(
                        'Email Me',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 25.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.black,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () => launch('tel:2253878327'),
                    child: ListTile(
                      leading: Icon(Icons.phone, color: Colors.white),
                      title: Text(
                        '(225) 387-8327)',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 25.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
