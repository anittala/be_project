import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'midscreen2.dart';
import 'home_screen.dart';

class MidScreen extends StatelessWidget {
  static const routeName = '/midscreen';

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
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Email:   aksharasn9920@gmail.com',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Name'),
                          keyboardType: TextInputType.text,
                        ),
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Phone Number'),
                          keyboardType: TextInputType.phone,
                        ),
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Street Address'),
                          keyboardType: TextInputType.streetAddress,
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Car model'),
                          keyboardType: TextInputType.text,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        RaisedButton(
                          child: Text('Update'),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(MidScreen2.routeName);
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
