import 'package:flutter/material.dart';
import 'package:pageview_login_app/screens/login/widgets/customFlatButton.dart';
import 'package:pageview_login_app/screens/login/widgets/provider_pagecontroller.dart';

class LoginTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    final screenSize = MediaQuery.of(context).size;
    Color accentColor = Theme.of(context).accentColor;

    return Scaffold(
      backgroundColor: accentColor.withOpacity(0.9),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(34, 22, 34, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: screenSize.height * 0.35,
                child: Column(
                  children: <Widget>[
                    SizedBox(child: Icon(Icons.headset_mic, color: Colors.white, size: 40)),
                    SizedBox(height: 22),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        children: <TextSpan>[
                          TextSpan(text: 'Awesome'),
                          TextSpan(text: 'App', style: TextStyle(fontWeight: FontWeight.bold)),
                        ]
                      ),
                    ),                    
                  ],
                ),
              ),
              SizedBox(height: 30),
              CustomFlatButton(
                onPressed: () => ProviderPageController.of(context).toPage(0),
                label: 'SIGN UP', 
                textColor: Colors.white, 
                backgroundColor: accentColor, 
                borderColor: Colors.white
              ),
              SizedBox(height: 30),
              CustomFlatButton(
                onPressed: () => ProviderPageController.of(context).toPage(2),
                label: 'LOGIN', 
                textColor: accentColor, 
                backgroundColor: 
                Colors.white
              )
            ],
          ),
        ),
      ),
    );
  }
}