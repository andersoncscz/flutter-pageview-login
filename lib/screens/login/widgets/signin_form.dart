import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pageview_login_app/screens/login/widgets/customFlatButton.dart';
import 'package:pageview_login_app/screens/login/widgets/custom_textformfield.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    Color accentColor = Theme.of(context).accentColor;

    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,        
        children: <Widget>[
          CustomTextFormField(
            controller: _emailController,
            labelText: 'EMAIL',
            hintText: 'somebody@hotmail.com',
            keyboardType: TextInputType.emailAddress,
            validator: (t) {},
          ),
          SizedBox(height: 18),
          CustomTextFormField(
            controller: _passwordController,
            labelText: 'PASSWORD',
            hintText: '*******',
            keyboardType: TextInputType.text,
            validator: (t) {},
            obscureText: true,
          ),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.only(top: 24, bottom: 32),
            width: double.infinity,
            child: Text(
              'Forgot Password?',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18,
                color: accentColor,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          CustomFlatButton(label: 'LOGIN', textColor: Colors.white, backgroundColor: accentColor),
          Container(
            padding: EdgeInsets.only(top: 12, bottom: 12),
            child: Row(
              children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                      )
                    ),
                  ),
                  Text("OR CONNECT WITH", style: TextStyle(color: Colors.grey[600])),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20.0, right: 10.0),
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                      )
                    ),
                  ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(width: 14),
              Expanded(
                child: CustomFlatButton(
                  imageAsset: 'assets/images/facebook_logo.png',
                  label: 'FACEBOOK', 
                  textColor: Colors.white, 
                  backgroundColor: Colors.blueAccent
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: CustomFlatButton(
                  imageAsset: 'assets/images/google_logo.png',
                  label: 'GOOGLE', 
                  textColor: Colors.white, 
                  backgroundColor: accentColor
                ),
              ),
              SizedBox(width: 14),
            ],
          ),
          SizedBox(height: 8),
        ],
      )
    );
  }
}