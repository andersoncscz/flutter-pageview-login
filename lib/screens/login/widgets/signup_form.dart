import 'package:flutter/material.dart';
import 'package:pageview_login_app/screens/login/widgets/customFlatButton.dart';
import 'package:pageview_login_app/screens/login/widgets/custom_textformfield.dart';
import 'package:pageview_login_app/screens/login/widgets/provider_pagecontroller.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();


  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    final Color accentColor = Theme.of(context).accentColor;

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
          SizedBox(height: 18),
          CustomTextFormField(
            labelText: 'CONFIRM PASSWORD',
            hintText: '*******',
            controller: _confirmPasswordController,
            keyboardType: TextInputType.text,
            validator: (t) {},
            obscureText: true,
          ),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.only(top: 24, bottom: 48),
            width: double.infinity,
            child: GestureDetector(
              onTap: () => ProviderPageController.of(context).toPage(2),
              child: Text(
                'Already have an account?',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 18,
                  color: accentColor,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          CustomFlatButton(label: 'SIGN UP', textColor: Colors.white, backgroundColor: accentColor),
          SizedBox(height: 8),
        ],
      )
    );
  }
}