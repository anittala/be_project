import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: 300,
                width: 300,
                padding: EdgeInsets.all(16),
                child: Form(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Pay as you Drive',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RaisedButton(
                          child: Text('Sign Up'),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(SignupScreen.routeName);
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          color: Colors.red[900],
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RaisedButton(
                          child: Text('Log In'),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(LoginScreen.routeName);
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
