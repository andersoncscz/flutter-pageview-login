import 'package:flutter/material.dart';

import 'screens/login/login_screen.dart';

class PageViewLoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PageView Login',
      theme: ThemeData(
        accentColor: Color(0xFFFFF65E5C),
        primarySwatch: Colors.red,
      ),
      home: LoginScreen(),
    );
  }
}