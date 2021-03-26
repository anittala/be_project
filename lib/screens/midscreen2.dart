import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'maps.dart';
import 'home_screen.dart';

class MidScreen2 extends StatelessWidget {
  static const routeName = '/midscreen2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.red[900]),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          FlatButton(
            child: Row(
              children: <Widget>[Text('Home'), Icon(Icons.home)],
            ),
            textColor: Colors.red[900],
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            },
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.red[900],
              Colors.orangeAccent,
            ])),
          ),
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                height: 700,
                width: 300,
                padding: EdgeInsets.all(16),
                child: Form(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Welcome aksharasn9920@gmail.com',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          'Name:   Satya Akshara',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          'Phone:   8850790289',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          'Street Address:   Maithilis Neev, Vashi, Navi Mumbai, Maharashtra 400703',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          'Car Model:   Maruti',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          'Initial insurance: Rs. 1,05,000',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        RaisedButton(
                          child: Text('Start travelling'),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(MapView.routeName);
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          color: Colors.red[900],
                          textColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
