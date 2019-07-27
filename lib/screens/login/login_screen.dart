import 'package:flutter/material.dart';
import 'package:pageview_login_app/screens/login/tabs/login_tab.dart';
import 'package:pageview_login_app/screens/login/tabs/signin_tab.dart';
import 'package:pageview_login_app/screens/login/tabs/signup_tab.dart';

class LoginScreen extends StatefulWidget {
  
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }  

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset('assets/images/background2.jpg', fit: BoxFit.cover),
        PageView(
          controller: _pageController,
          children: <Widget>[
            SignUpTab(),
            LoginTab(pageController: _pageController),
            SignInTab(),
          ],
        ),
      ],
    );
  }
}