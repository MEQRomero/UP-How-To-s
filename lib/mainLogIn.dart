import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'mainAuth.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Please use UPmail.')), body: Body());
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  FirebaseUser user;

  @override
  void initState() {
    super.initState();
    signOutGoogle();
  }

  void click() {
    signInWithGoogle().then((user) => {
          this.user = user,
          if (user.email.contains("uphowtosofc@gmail.com"))
            {
              Navigator.of(context)
                  .pushNamed('/dashboard', arguments: user), //admin version
            }
          else
            {
              if (user.email.contains("@up.edu.ph"))
                {
                  Navigator.of(context).pushNamed('/dashboard',
                      arguments: user), // student version
                }
              else
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginPage())) // invalid emails
                }
            },
        });
  }

  Widget googleLoginButton() {
    return OutlinedButton(
        onPressed: this.click,
        /*shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        splashColor: Colors.grey,
        borderSide: BorderSide(color: Colors.grey),*/
        child: Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(image: AssetImage('assets/google_logo.png'), height: 35),
                Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Sign in with Google',
                        style: TextStyle(color: Colors.grey, fontSize: 25)))
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.center, child: googleLoginButton());
  }
}
