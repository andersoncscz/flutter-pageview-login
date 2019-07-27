import 'package:flutter/material.dart';

import 'package:pageview_login_app/screens/login/widgets/signin_form.dart';

class SignInTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    Color accentColor = Theme.of(context).accentColor;

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: SafeArea(
        child: Container(
          child: ListView(
            padding: EdgeInsets.fromLTRB(34, 22, 34, 0),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: screenSize.height * 0.25,
                    child: Icon(Icons.headset_mic, size: 50, color: accentColor),
                  ),
                  SignInForm(),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}