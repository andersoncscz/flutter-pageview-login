import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {

  final String label;
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final String imageAsset;
  final Function onPressed;

  CustomFlatButton({this.label, this.textColor, this.backgroundColor, this.borderColor, this.imageAsset, this.onPressed});


  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(40),
        border: borderColor != null ? Border.all(color: borderColor) : null
      ),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        onPressed: onPressed != null ? onPressed : () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            imageAsset != null && imageAsset.isNotEmpty 
            ? Container(
                height: 16, 
                width: 16, 
                margin: EdgeInsets.only(right: 12),
                child: Image.asset(imageAsset, fit: BoxFit.cover)
              ) 
            : Container(),
            Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        textColor: textColor,
      ),
    );
  }
}