import 'package:flutter/material.dart';

extension ScreenExtension on Widget{
  void navigateToNextScreen(BuildContext context,Widget widget){
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context){
          return widget;
        }));
  }
}