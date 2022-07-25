import 'package:flutter/material.dart';

class mybehavior extends ScrollBehavior {
  @override
  Widget buildViewPortChrome(
      BuildContext context, Widget child,_) {
    return child;
  }
}
